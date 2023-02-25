#include "sensors.h"

float getTemperature() {
    char command[100];
    char output[200];
    float temperature;
    

    // Run sensors command and capture output
    system("sensors > temp.txt");
    FILE* temp_file = fopen("temp.txt", "r");
        
    // Parse temperature from output
    while(fgets(output, 200, temp_file)) {
        if(strstr(output, "Core 0")) { //TODO mudar isto maybe
            sscanf(output, "Core 0: +%f°C", &temperature);
            break;
        }
    }
        
    fclose(temp_file);
    remove("temp.txt");
    printf("Temperature is %.1f°C\n", temperature);
    
    return temperature;
}