### EnergyMeasurement: Repositório da UC de Experimentação em Engenharia de Software - Ano letivo 2022/2023
Autores: Gonçalo Pereira, Simão Cunha, Luís Silva

Grupo: 10

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
* **Time** : Tempo de execução do algoritmo, em milissegundos;
* **Temperature** : Temperatura média em ºC de todos os cores;
* **Memory** : Memória física total atribuída à execução do algoritmo, em kbytes
