
/*
 *  Análise e Teste de Software
 *  João Saraiva
 *  2016-2017
 */

#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <powercap/powercap.h>
#include <raplcap/raplcap.h>
#include <math.h>
#include "rapl.h"
#include "sensors.h"

#define TEMPERATURETHRESHOLD 49.83333206176758
#define LONGWHATTS 1000
#define LONGTIME 100
#define SHORTWHATTS 5
#define SHORTTIME 10000
#define RUNTIME

long fib(int n)
{
    if (n < 1)
        return 1;
    else
        return fib(n - 1) + fib(n - 2);
}

int main(int argc, char **argv)
{
    char command[500], res[500];
    int ntimes = 1;
    int core = 0;
    int i = 0;

#ifdef RUNTIME
    clock_t begin, end;
    double time_spent;

    struct timeval tvb, tva;

#endif

    FILE *fp;

    // RAPLCAP
    raplcap rc;
    raplcap_limit rl_short, rl_long;
    uint32_t q, j, n, d;

    // initialize
    if (raplcap_init(&rc))
    {
        perror("raplcap_init");
        return -1;
    }

    // get the number of RAPL packages
    n = raplcap_get_num_packages(NULL);
    if (n == 0)
    {
        perror("raplcap_get_num_packages");
        return -1;
    }

    // assuming each package has the same number of die, only querying for package=0
    d = raplcap_get_num_die(&rc, 0);
    if (d == 0)
    {
        perror("raplcap_get_num_die");
        raplcap_destroy(&rc);
        return -1;
    }

    // for each package die, set a power cap of 100 Watts for short_term and 50 Watts for long_term constraints
    // a time window of 0 leaves the time window unchanged
    rl_long.watts = LONGWHATTS;
    rl_long.seconds = LONGTIME;
    rl_short.watts = SHORTWHATTS;
    rl_short.seconds = SHORTTIME;
    for (q = 0; q < n; q++)
    {
        for (j = 0; j < d; j++)
        {
            if (raplcap_pd_set_limits(&rc, q, j, RAPLCAP_ZONE_PACKAGE, NULL, &rl_short))
            {
                perror("raplcap_pd_set_limits");
            }
        }
    }
    // for each package die, enable the power caps
    // this could be done before setting caps, at the risk of enabling unknown power cap values first
    for (q = 0; q < n; q++)
    {
        for (j = 0; j < d; j++)
        {
            if (raplcap_pd_set_zone_enabled(&rc, q, j, RAPLCAP_ZONE_PACKAGE, 1))
            {
                perror("raplcap_pd_set_zone_enabled");
            }
        }
    }
    // RAPLCAP

    // printf("Program to be executed: %d",argc);
    // strcpy( command, "./" );
    strcat(command, argv[1]);
    printf("Program to be executed: %s\n", argv[1]);

    strcpy(command, "./");
    strcat(command, argv[1]);

    ntimes = atoi(argv[2]);

    strcpy(res, command);
    strcat(res, ".J");
    printf("Command: %s  %d-times res: %s\n", command, ntimes, res);

    printf("\n\n RUNNING THE PARAMETRIZED PROGRAM:  %s\n\n\n", command);
    fflush(stdout);

    fp = fopen(res, "w");
    rapl_init(core);

    fprintf(fp, "Program, Package , Core(s) , GPU , DRAM? , Time (ms) , Temperature , Memory \n");

    int maxTrys = 5;
    float temperature;
    char str_temp[20];

    for (i = 0; i < ntimes; i++)
    {
        temperature = getTemperature();
        
        for (int currentTrys = 0; currentTrys < maxTrys && temperature>TEMPERATURETHRESHOLD; currentTrys++,temperature = getTemperature()) //NEW
        {
            printf("Sleeping\n");
            sleep(1);
        }
        sprintf(str_temp, "%.1f", temperature);

        fprintf(fp, "%s , ", argv[1]);

        rapl_before(fp, core);

        

        //////////////////////////////////////////////////////////////
#ifdef RUNTIME
        begin = clock();
        gettimeofday(&tvb, 0);
#endif
        ///////////////////Add memory column in csv///////////////////
        
        char cmd[1024];
        int mem;
        sprintf(cmd, "{ /usr/bin/time -v %s > /dev/null; } 2>&1 | grep 'Maximum resident' | sed 's/[^0-9]\\+\\([0-9]\\+\\).*/\\1/'", command);
        
        FILE *fp2 = popen(cmd, "r");
        if (fp2 == NULL)
        {
            fprintf(stderr, "Error running command\n");
            exit(-1);
        }

        char buf[1024];
        while (fgets(buf, sizeof(buf), fp2) != NULL)
        {
        }
        pclose(fp2);

        mem = atoi(buf);
        
#ifdef RUNTIME

        end = clock();
        gettimeofday(&tva, 0);
        //	time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
        time_spent = ((tva.tv_sec - tvb.tv_sec) * 1000000 + tva.tv_usec - tvb.tv_usec) / 1000;
#endif

        rapl_after(fp, core);

#ifdef RUNTIME
        fprintf(fp, "%G ,", time_spent);
        fprintf(fp, " %s ,", str_temp);
        fprintf(fp, " %d \n", mem);

#endif
    }

    printf("\n\n END of PARAMETRIZED PROGRAM: \n");

    fclose(fp);
    fflush(stdout);

    // cleanup
    if (raplcap_destroy(&rc))
    {
        perror("raplcap_destroy");
    }
    return 0;
}
