### EnergyMeasurement: Repositório da UC de Experimentação em Engenharia de Software - Ano letivo 2022/2023

Autores: Gonçalo Pereira, Simão Cunha, Luís Silva
Grupo: 10
Relatório: [aqui](https://github.com/realRunlo/EnergyMeasurement/blob/main/docs/On_the_Energy_Efficiency_of_Sorting_Algorithms.pdf)

Bibliotecas necessárias:
1. RAPL
2. lm-sensors
3. Powercap
4. Raplcap

Para instalar as bibliotecas necessárias correr a script:

```sudo sh setup.sh```

Para gerar o csv correr a script:

```sh measurements.sh```

Significado das colunas do ficheiro csv:
* **Size** : Tamanho da lista argumento do algoritmo de ordenação;
* **Language** : Linguagem de programação do algoritmo de ordenação;
* **Program** : Nome do algoritmo de ordenação;
* **Package** : Energia consumida por todo o socket (consumo de todos os cores, gráficas e componentes fora dos cores);
* **Core** : Energia consumida por todos os cores e caches;
* **GPU** : Energia consumida pelo GPU;
* **DRAM** : Estima a energia consumida pela RAM;
* **Time** : Tempo de execução do algoritmo(em ms)
* **Temperature** : Temperatura média de todos os cores (em ºC);
* **Memory** : Memória física total atribuída à execução do algoritmo (em KBytes);
* **Cost** : Custo de desenvolvimento do código (em $);
* **PowerLimit** : Limitação da potência dos cores (em Watts)
