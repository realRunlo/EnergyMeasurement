## On the Energy Efficiency of Sorting Algorithms
### Presented in Sustrainable 2023 - Coimbra
  <tr>
    <td align="center">
      <p align="center">
        <img src="docs/images/sustrainable.png" alt="sustrainable" width="300" height="90" />
        <img src="docs/images/uminho.png" alt="uminho" width="150" height="100" />
        <img src="docs/images/haslab.png" alt="haslab" width="200" />
      </p>
    </td>
  </tr>

* Presentation: [here](https://github.com/simaocunha71/EnergyMeasurement/blob/main/docs/presentation.pdf)
* Poster: [here](https://github.com/simaocunha71/EnergyMeasurement/blob/main/docs/poster.pdf)
* Report: [here](https://github.com/simaocunha71/EnergyMeasurement/blob/main/docs/On_the_Energy_Efficiency_of_Sorting_Algorithms.pdf) <br>

### Authors
* [Gonçalo Pereira](https://github.com/realRunlo)
* [Simão Cunha](https://github.com/simaocunha71)
* [Luís Silva](https://github.com/LuisMPSilva01) 


### Required libraries
1. RAPL
2. lm-sensors
3. Powercap
4. Raplcap

### Setup
In order to install all the required libraries, you should execute the script:

```sudo sh setup.sh```

Then, to generate the CSV file, execute the script:

```sh measurements.sh```

### Meaning of the CSV file columns
* **Size** : Length of the argument list used by the sorting algorithm;
* **Language** : Programming language of the sorting algorithm;
* **Program** : Name of the sorting algorithm;
* **Package** : Energy consumption of the entire socket- all cores consumption, GPU e external core components);
* **Core** : Energy consumption by all cores and caches;
* **GPU** : Energy consumption by the GPU;
* **DRAM** : Energy consumption by the RAM;
* **Time** : Algorithm's execution time (in ms);
* **Temperature** : Mean temperature in all cores (in ºC);
* **Memory** : Total physical memory assigned to the algorithm execution (in KBytes);
* **Cost** : Development cost (in $);
* **PowerLimit** : Power cap of the cores (in Watts)
