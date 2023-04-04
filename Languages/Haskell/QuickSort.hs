-- Source: ChatGPT
logging = False

--module QuickSort where

quicksort :: Ord a => [a] -> [a]
quicksort [] = []
quicksort (x:xs) = quicksort smaller ++ [x] ++ quicksort larger
  where
    smaller = [y | y <- xs, y <= x]
    larger = [y | y <- xs, y > x]

main :: IO ()
main = do
  let unsortedList = [17737,95104,48520,64752,73932,31872,77968,66053,82046,27409,31300,82356,392,86493,82738,82915,58730,37659,22189,30600,42790,20612,42187,46177,25407,50256,23904,9476,34470,40187,35757,30053,69513,32302,78433,18287,41971,11814,17297,30542,36136,36518,92526,79350,45707,59883,724,29502,99080,27049,94602,89583,34162,11354,5628,98881,73903,44640,19155,68452,54133,1303,83724,19827,5605,73384,26050,22268,15196,79306,52164,45649,31208,59775,92090,84517,49490,15637,84618,84036,25013,5139,90924,54811,85870,44256,58353,24778,6668,76949,83300,73174,25515,53362,69588,21140,1525,54823,32953,90099,82298,31957,96218,44197,98274,86766,24254,41553,1646,38115,39390,31307,98206,97418,12784,43616,44175,54031,42157,85415,91548,54908,79439,7331,66708,68102,35796,98238,71028,99675,99898,55166,32908,74112,87361,38043,87512,12702,40674,26479,67976,37087,48724,46613,69275,1742,34598,70623,27696,58462,26726,88178,38610,62369,60509,31919,14758,37932,69650,24657,25782,37514,67317,97737,63326,31505,2811,98570,66771,88046,8341,78453,46562,67490,85483,60692,29199,4810,95728,35528,43971,35456,24339,12338,1102,31216,92654,19423,57947,64607,16065,43621,31284,46661,21537,52677,10388,97379,6028,39811,71433,83606,74972,60958,63418,96652,58571,40295,24975,29755,17344,26630,13052,75400,3529,19460,9266,50806,81463,9132,19134,91542,18569,3450,61888,3168,25398,78754,49283,9433,64925,62226,61716,42403,23112,12625,36867,22792,39339,95664,57070,20938,20345,42011,11496,4422,80599,56953,86141,96905,65672,82543,18105,61206,55997,64537,84216,54052,7844,53270,75804,18440,73460,3456,22787,60277,29537,48563,38625,54304,66007,77713,56636,75815,80967,17219,20172,52925,97674,13665,71482,35820,8036,84943,50249,38274,23999,32005,59895,79296,76720,55555,23761,43921,44499,28732,67413,40609,8141,17402,7750,4961,52428,25070,48388,15913,38448,47904,90989,36188,7034,99610,31142,83436,21357,7320,39125,59009,27221,86252,29645,34432,14007,18745,83446,89268,15497,5388,15295,33195,13719,15821,25567,55761,15591,28232,48551,57782,10714,70045,61314,20508,11218,74992,72629,26361,76712,52994,67526,12011,2096,71821,36187,22847,52493,98485,26924,38517,96694,21153,60458,51707,20345,92897,13281,33033,64269,70130,33478,26728,99609,76236,28809,42947,95999,66123,48694,96158,92207,18182,81027,77869,83609,40360,67221,72193,75812,67155,184,17265,34744,28418,46738,70135,76582,93409,67629,76181,75773,79821,25707,32763,35757,81721,78424,34591,23497,98851,16372,59098,21894,47131,76445,29626,61330,72720,79996,1422,24038,30994,16377,52645,93579,92951,10522,27690,98621,27298,45290,36518,21252,27930,60289,1387,77588,77353,95226,51005,30574,16357,59665,84479,9141,19388,50816,89090,42750,24404,50736,94098,35716,30771,91499,37563,15866,84321,34044,20731,84412,36963,14438,90294,76336,63280,14395,94104,11031,10800,81429,66145,44749,34181,51503,26763,5170,79569,59226,96803,21462,82304,36345,18604,89354,12271,80754,63760,92251,32549,29174,56703,51809,43577,20691,44747,42454,47658,80584,17302,87973,57988,69405,29918,67326,6413,24055,97350,36643,64501,86840,30768,52010,62913,53453,29162,38714,64625,61311,16527,37256,25803,24371,62681,50704,62258,86464,24983,49833,26102,51897,20913,85657,3349,20726,29622,30385,11369,53800,36317,19945,91401,82545,1281,5881,73077,73223,17734,44099,53742,59541,45814,52644,93096,27922,74328,86965,17052,52780,6255,78727,46936,88673,95669,78932,92055,34759,67027,83854,76058,94436,45587,71709,8857,63216,62783,67773,71466,42114,46284,40921,29058,88678,75307,409,15001,23126,34016,61596,87437,1953,9648,18530,94263,5568,73812,12339,62823,8377,51565,96818,33551,82778,23553,85554,87805,53854,28177,60159,26135,26054,91415,87087,21736,7924,3753,61932,4528,26350,13360,87511,53667,40955,692,23811,73525,66353,59538,91788,34575,28382,58113,16202,87950,31086,15145,45166,40762,45314,91670,24677,7252,77543,23681,44576,11385,10356,12199,5816,66421,31379,43155,63796,35628,80973,2605,48791,15290,84229,87468,25739,40833,10206,86179,98284,75926,82606,70876,50061,70245,23665,12971,51489,57032,86351,93622,66729,61837,89071,49192,61705,64767,77880,43915,23272,77007,50460,93297,57779,86164,12083,1831,25580,37109,58743,9405,62,12597,99866,17591,30542,57517,30210,70172,9189,15194,26114,20019,73433,43700,38509,56662,17595,59358,47163,14369,91027,79289,74303,96711,8058,98620,56412,52281,46049,77438,55139,52005,48600,95979,47437,26997,67003,23751,45828,63495,94564,6125,51676,70248,32504,40607,322,63943,39800,64936,74727,75095,38681,19648,97768,73080,33758,22620,62015,13626,60557,57230,7672,90022,68520,62900,94418,42349,3330,52556,90604,3397,91849,8228,30140,20606,71499,56235,63346,5639,74763,22180,92384,46084,81128,45966,52919,85495,49040,46403,50269,415,26723,56014,60392,17628,95301,48022,75926,44649,89094,26399,86687,31165,72981,96832,89449,93768,76003,89530,55473,7813,2291,28084,40764,61575,22578,59024,39332,62061,87463,81728,82283,34058,31488,22663,75014,84896,43645,30305,42503,58978,45174,9222,56577,28328,62559,50563,72246,19261,10198,16309,7354,36401,25604,985,13290,98647,13391,30968,60065,9308,70605,17280,37024,47752,92121,8837,56401,34625,58164,48396,40349,15130,70442,85500,12008,41273,96886,74487,54719,39421,57087,75765,61962,61170,32111,85383,13971,22363,52418,39337,31152,84454,6623,7871,98115,31528,61570,33135,44048,6117,26745,35995,73391,74932,81664,96296,11329,29875,91510,51789,42987,51673,76826,52061,56336,85565,98506,30360,55818,34737,86072,29719,83476,43822,33296,73958,26298,49897,68227,34182,84738,59363,95180,19310,55316,88394,36469,99269,56560,9833,66545,79886,97134,343,83675,6406,33280,90033,46226,2345,70349,87735,36511,77213,97986,79405,30286,68074,41291,1134,62259,25499,66612,20101,15395,14141,22987,44272,19064,86084,78879,2784,69124,80603,11244,7085,54082,72332,48079,47670,30591,27699,90415,61209,58693,34569,45427,55368,68215,49750,11814,66312,99163,59265,48113,55697,72489,16378,84092,91460,71938,60475,93138,86555,96049,64946,95036,18222,84662,61155,7659,71353,36271,39154]
      sortedList :: [Int] -- Add this line
      sortedList = quicksort unsortedList
  if (logging)
    then putStrLn ("QuickSort Sorted list: " ++ show sortedList)
    else print (length(sortedList))