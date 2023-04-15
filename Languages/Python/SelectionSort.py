#!/usr/bin/env python3
LOGGING = False

# Source: https://www.geeksforgeeks.org/selection-sort/

# Python program for implementation of Selection Sort
import sys
array = [91587,2943,18642,58338,32632,13555,76600,60502,75525,39254,94318,69973,99092,73865,91914,42614,8646,53566,15173,68865,91935,35790,8006,33901,42131,54038,79957,70823,81164,17755,43979,67748,16270,42874,37411,44766,45748,83788,19140,66512,72344,67839,29008,91805,47883,38492,98863,89435,75103,97138,43399,52199,55406,57856,39763,62268,15597,26332,54631,4593,37898,70421,33540,53619,28016,19708,11806,87569,64726,51730,87311,13714,43873,11552,90034,77870,6118,61106,63256,41334,63707,34308,44042,34370,64336,52047,51007,64738,62837,7485,77886,45372,60751,3443,97575,91800,53672,79756,28298,50939,36225,37631,80274,26300,54862,64941,33597,5624,54201,26564,28459,13485,88981,35853,99207,50680,63059,67342,26714,92294,8356,94392,8146,33933,19376,46718,856,92268,98362,5001,95762,98836,8909,39618,30058,57160,58783,68118,70281,75785,25565,4516,27455,80142,22001,40974,98704,26716,82051,38055,53832,96625,93209,93086,26872,45196,23529,94430,60977,97343,67575,68672,1875,96047,72209,54883,60114,56942,51244,67270,10677,12811,4801,92721,76384,20206,69216,59240,94925,37085,88798,23783,69700,27019,20486,7028,23510,91508,84056,91830,40840,8892,40850,37927,41544,27494,35408,70438,3680,3862,58969,85536,7,86814,125,51071,46590,72175,85672,93180,7648,51360,18001,94992,10805,41173,57743,23018,81989,12894,56743,24633,90062,60858,86995,9029,43017,28473,69577,23239,6227,7999,42004,50153,61722,10740,51888,37613,58421,18728,27948,472,48957,39166,3794,18263,72565,71009,2599,33010,63786,66081,22285,82355,85372,98979,7104,3416,24439,41467,59299,49736,13662,90374,14523,55631,8757,99476,69041,15724,24612,87120,10088,90096,61299,2520,25968,53533,20981,876,15103,85281,12846,36356,4777,44842,50729,13558,8961,33823,1758,74921,72075,70950,65789,20423,22761,17373,83524,2425,68820,36535,86051,1871,54125,14575,17231,59370,81580,57020,98163,7762,74573,52580,56693,4825,3231,7349,30796,47204,85181,67959,25665,33685,95165,68556,51006,39473,66651,55387,17312,30962,67233,96979,23525,36136,95418,61844,26380,45312,58834,35312,28621,10175,52834,59196,86158,50439,29065,52812,38175,97034,67758,81393,33712,67542,37026,30196,3012,88998,56421,19091,4319,85346,44022,30648,94009,19314,60025,80399,8914,29652,2656,80813,13951,18321,12690,93072,93370,26659,56658,97509,56719,97701,65559,46884,84760,44879,89292,32408,87789,17970,71599,89353,91507,63633,22947,48280,76874,54244,60773,35633,15352,23911,63325,88892,22031,29946,93339,34589,63777,76208,99192,84708,22414,78343,9875,99978,32694,98290,73291,58680,28534,98346,20544,14847,50221,84870,19480,76237,50449,77268,84971,65467,42141,76864,38342,99100,62584,45060,19046,60411,50590,96811,73018,14413,52947,14934,44322,41919,70382,29291,49921,39851,48210,59237,36995,56407,8714,25717,43658,49012,5185,41833,76102,30125,30039,9261,83341,64397,598,15440,82970,59180,99097,33322,9233,42828,60779,15137,74558,56938,48878,80048,45684,38932,87962,78758,80680,32153,51942,43303,21328,15803,52784,25152,73646,16852,47853,75308,78302,12037,96948,14271,54811,88854,19420,33982,98144,17902,12046,85726,49576,20996,79313,64466,90112,3039,35693,37529,69892,16539,34247,80698,69537,50589,78808,53448,90993,60330,32648,10542,45522,82352,96443,7567,89999,5418,16380,27875,58915,6363,17482,66972,1158,63341,80607,88265,66919,59551,56251,2746,77913,19256,86164,92555,23905,60942,90873,72349,15513,91267,68919,3869,39410,17339,28963,43490,19558,40388,3436,49945,38208,73337,83530,149,77877,72164,10953,33039,83184,84512,36857,43382,70668,74953,45483,77103,31376,45867,21566,65540,63432,25398,27535,69318,31606,48222,49085,56513,22177,4429,16984,86776,25170,89158,80489,67650,89302,50931,53874,40094,1077,70255,94177,9339,76907,97308,54243,84894,51717,87655,71802,99953,82062,31504,56962,33752,37499,2233,81407,55501,47178,97228,47817,37646,84651,99315,94953,4191,52032,36069,4731,11177,71597,74611,92576,54648,25512,41722,15515,49464,54852,18422,16320,40010,57478,47908,76523,41473,22011,55536,22609,94158,74760,98226,35183,65604,26024,90545,31525,15542,67484,33470,37178,51501,50307,4936,36764,96494,89420,24288,37114,65574,57965,63245,11319,39957,64038,18999,93871,61226,19381,6804,98554,6519,15634,25367,34150,91320,42632,31838,26297,20530,92730,17705,55101,60327,21469,43147,62288,49361,37356,28375,57099,92393,16239,95906,98239,11370,85126,92007,53318,72887,64242,38305,46587,10515,44659,25462,34983,19477,61125,47021,60095,99525,97211,58263,90842,16016,41835,50098,73572,93923,25698,40526,41792,53986,9291,62089,76456,31535,72987,95424,71563,85278,94894,68284,32280,63288,93331,25912,75195,14602,93877,70232,22975,70906,75215,43595,19983,90430,16225,66976,37768,66003,38301,81698,48841,10214,28468,21298,22422,91525,9900,24367,82412,36787,49779,95409,84837,14,61307,76825,43656,99213,30128,32559,61626,31470,18264,73769,26803,56776,65452,12672,94279,60835,41957,66858,18060,48956,82128,17690,36716,64418,82453,67007,17576,79787,71958,9975,59125,96759,77227,75749,10111,16003,79207,40585,18115,51225,80774,73295,63668,94110,55463,88159,22537,99125,93456,45077,19364,72321,96005,26538,47647,63657,71169,13346,46170,32452,80674,55971,67561,87738,8030,68795,29685,12349,78687,44186,18383,72024,83811,10065,58797,23526,39646,8483,60654,53798,7604,74012,43863,37598,41783,650,92323,15769,23105,69134,6681,23094,40025,59367,28230,20263,9817,49783,80464,77158,59340,49577,40196,94109,32739,18607,62327,21566,13112,94899,81276,56726,33430,56399,11124,4466,30247,37361,28014,56250,27281,5161,9198,78371,59115,65758,92377,68404,89055,553,54886,36341,68263,35385,43579,55723,68934,18696,20257,29176,73442,27073,89833,88851,29633,47692,23088,41014,27250,93246,92724,53103,98451,79388,17296,29705,87408,864,11594,82639,87948,40134,42148,78563,46665,16927,99596,22883,91976,14561,89602,77186,79544,60390,17196,62564,61419,18704,91839,56096,90615,88495,855,18403,80358,55903,71913,84465,85966,95961,27124,20620,52119,85906,73555,83683,59841,47096,12440,38437,98700,10199,88269,86916,45545,56249,91424,56024]
  
# Traverse through all array elements
for i in range(len(array)):
      
    # Find the minimum element in remaining 
    # unsorted array
    min_idx = i
    for j in range(i+1, len(array)):
        if array[min_idx] > array[j]:
            min_idx = j
              
    # Swap the found minimum element with 
    # the first element        
    array[i], array[min_idx] = array[min_idx], array[i]
  
if(LOGGING):
    print('Sorted array:', array)