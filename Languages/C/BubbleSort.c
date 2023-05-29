#include <stdio.h>
#include <stdlib.h>
#define elems 128,135,512,676,681,998,1011,1020,1049,1128,1422,1468,1569,1620,1849,1873,1893,1997,2302,2368,2626,2669,2710,2841,2931,2998,3164,3249,3269,3288,3305,3310,3355,3417,3566,3596,3703,3756,3898,4112,4383,4481,4630,4704,4911,4914,4950,5155,5364,5421,5566,5595,5595,5657,5849,5896,6060,6272,6278,6402,6488,6491,6539,6569,6609,6646,6650,6692,6730,6766,6876,6919,6954,7016,7066,7120,7218,7230,7282,7358,7442,7469,7559,7589,7620,7845,7989,8092,8330,8386,8745,8794,8843,8846,8940,9056,9088,9285,9324,9330,9522,9705,9709,9901,9904,10285,10412,10620,10807,10866,10868,10936,10987,11000,11074,11158,11165,11187,11289,11321,11408,11712,11816,11924,12008,12118,12298,12308,12499,12620,12673,12679,12761,12817,13122,13174,13209,13353,13436,13468,13605,13638,13692,13779,13823,13891,13986,13989,14084,14308,14524,14538,14592,14621,14696,15040,15068,15147,15180,15242,15343,15398,15467,15492,15635,15721,15809,15811,15943,15964,16039,16050,16058,16090,16155,16501,16518,16627,16775,16831,16880,16884,16896,17011,17160,17166,17248,17576,17680,17703,17771,17798,17828,17856,17919,18405,18457,18548,18600,18718,18956,19056,19544,19889,19899,19946,20007,20328,20484,20495,20503,20504,20601,20620,20630,20836,20919,20993,21045,21098,21144,21743,21818,21819,22002,22048,22133,22187,22299,22366,22517,22674,22736,22779,23041,23104,23109,23140,23146,23262,23382,23516,23570,23805,23805,23815,23938,24192,24246,24615,24694,24700,24893,25126,25370,25492,25770,26090,26210,26291,26567,26635,26639,26805,26856,26999,27097,27101,27316,27371,27388,27521,27677,27749,27824,27945,28059,28137,28278,28385,28405,28589,28676,28692,28735,28740,28779,28873,28959,29026,29107,29116,29633,29656,29666,29754,30026,30208,30221,30229,30280,30330,30623,30651,30702,30725,30775,30799,30874,31038,31038,31052,31430,31510,31551,31571,31702,31878,32075,32113,32137,32272,32509,32527,32650,32842,32855,32884,32947,32976,33022,33063,33074,33228,33236,33319,33349,33399,33435,33491,33560,33649,33685,33724,33997,34043,34064,34167,34170,34254,34339,34391,34401,34601,34668,34765,34825,34864,34897,34925,34986,34990,35057,35164,35192,35317,35491,35666,35840,35850,35972,35998,36061,36106,36318,36326,36411,36568,36863,36879,36923,36933,36941,37051,37075,37184,37342,37590,37673,37686,37734,37776,37885,37947,38135,38243,38319,38521,39604,39626,40018,40190,40464,40487,40600,40859,40883,40943,41133,41206,41335,41385,41389,41458,41730,41757,41968,42020,42091,42204,42358,42533,42605,42679,42691,42762,42780,42809,42883,43115,43130,43146,43208,43251,43261,43531,43582,43644,43653,43744,43822,43857,43858,43911,43993,43996,44043,44044,44181,44225,44390,44440,44917,45021,45311,45413,45556,45785,45871,46048,46107,46136,46291,46423,46470,46478,46541,46623,46769,47018,47131,47276,47421,47444,47467,47614,47626,47888,48025,48200,48398,48462,48552,48605,48696,48797,48812,48876,49029,49246,49276,49276,49352,49483,49577,49892,49929,50078,50177,50266,50266,50614,50731,50804,50809,50851,50888,50960,51017,51125,51195,51246,51458,51489,51679,51707,51750,51861,51866,51976,52209,52222,52267,52443,52555,52626,52713,52756,52829,52831,53009,53112,53373,53405,53567,53577,53635,53642,53743,53852,54051,54073,54095,54103,54335,54490,54678,54783,54858,54980,55079,55186,55265,55508,55770,55838,56019,56045,56164,56402,56436,56481,56506,56618,57102,57129,57177,57186,57374,57455,57497,57536,57555,57738,57789,58057,58159,58222,58276,58288,58335,58371,58374,58520,58579,58590,58660,58779,58908,59027,59145,59222,59226,59263,59274,59282,59460,59564,59622,59824,59880,60010,60038,60206,60222,60245,60381,60433,60515,60516,60660,60739,60825,60884,60944,60954,61264,61274,61317,61319,61403,61445,61558,61817,61830,61918,61960,62052,62329,62826,62864,62897,63040,63060,63201,63396,63486,63508,63621,63722,63739,64217,64583,64702,64719,64990,65057,65121,65216,65233,65368,65486,65495,65509,65714,65948,65961,66093,66143,66292,66377,66485,66487,66656,66751,66822,66846,67281,67306,67360,67375,67534,67607,67628,67784,67795,67881,67960,67984,68053,68120,68429,68507,68510,68602,68855,68917,69001,69110,69114,69390,69461,69562,69692,69940,70005,70134,70434,70556,70671,71077,71147,71215,71544,71623,71722,71785,72062,72063,72272,72284,72462,72648,72771,72832,72976,73007,73152,73224,73277,73396,73438,73471,73658,73885,73946,73972,74031,74139,74158,74171,74191,74412,74536,74559,74739,75017,75253,75408,75441,75545,75703,75807,76038,76123,76312,76389,76395,76667,76673,76866,76896,76904,77105,77221,77251,77403,77465,77655,77774,77916,77973,78336,78464,78738,78783,78788,78790,78853,78951,79076,79096,79106,79146,79310,79346,79350,79485,79505,79567,79608,79608,79609,79634,79641,79815,80013,80079,80131,80271,80277,80326,80332,80430,80453,80524,80554,80603,80603,80842,80848,80878,80971,81002,81005,81321,81324,81488,81497,81509,81517,81566,81610,81726,81842,82042,82086,82120,82144,82167,82184,82323,82380,82470,82592,82909,83020,83307,83331,83396,83403,83446,83451,83476,83478,83570,83641,83700,84403,84415,84438,84454,84461,84692,84697,84721,84744,84839,84867,84870,84920,85124,85360,85403,85497,85509,85560,85564,85675,85762,85852,85977,86009,86145,86198,86294,86357,86481,86529,86570,86921,87005,87080,87201,87211,87379,87708,87835,87900,88113,88188,88223,88298,88381,88539,88623,88741,88751,88754,88779,88814,89086,89261,89316,89428,89575,89579,89785,89925,90084,90099,90272,90297,90423,90541,90548,90566,90625,90918,91088,91205,91258,91556,91615,91633,91673,91749,91758,91844,91864,91885,91978,92110,92127,92137,92141,92159,92346,92395,92427,92442,92514,92535,92678,92769,92872,93065,93098,93273,93419,93466,93572,93850,93863,93865,94304,94488,94515,94520,94742,94824,94841,95001,95380,95462,95492,95582,95647,95698,95784,95789,96019,96087,96091,96118,96224,96238,96337,96440,96537,96564,96569,96600,96788,97022,97253,97347,97397,97429,97578,97780,97801,97907,98042,98164,98205,98263,98365,98493,98603,98695,98766,98802,98884,99320,99471,99683,99734,99936,99964
#define LOGGING 0 // 0 == false & 1 == true

int swapped = 0; // global variable to check if swap() function is called

void swap(int *a, int *b)
{
    int temp = *b;
    *b = *a;
    *a = temp;
    swapped++;
}

int bubblesort(int *a, int size) // to demonstrate passing by refference in C (pointer variable receives only the base address of array)
{
    for (int i = 0; i < size; i++)
    {
        for (int j = 0; j < size - i - 1; j++)
        {
            if (a[j] > a[j + 1])
            {
            swap(a+j, a+j+1); // making a function is good instead of many lines of code in main function 
            }
        }
        if (swapped == 0)
            return 1; // use return values better than break statement
    }
    return 0; // sorted 
}

// function to print the array
void printArray(int arr[], int size) {
    for (int i = 0; i < size; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");
}

int main(){
    int arr[] = {elems};
    int size = sizeof(arr) / sizeof(arr[0]);

    bubblesort(arr,size);
    if(LOGGING){
        printf("Sorted array: ");
        printArray(arr, size);
    }

    return 0;

}
