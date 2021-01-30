# Practica 1: Estudio NB-IoT

Bienvenido al estudio realizado para la practica 1, sobre la tecnología NB-IoT.

### Tabla de Contenidos:

1. Obtener el 5G-air-simulator.
2. Compilando el 5G-air-simulator.
3. Ejecutanto el 5G-air-simulator.
4. Parametros y comandos para simular la tecnología NB-IoT.

### 1. Obtener el 5G-air-simulator

Para comenzar mencionar y dar gracias a los autores y desarrolladores del 5G-air-simulator, ademas el código original se encuentra en el siguiente enlance:

      https://github.com/telematics-lab/5G-air-simulator.

A continuación se le hara mención al método para obtener el 5G-air-simulator. Para comenzar mencionar que esta herramiento solo se encuentra disponible en los sistemas operativos Linux, por ende se da por hecho que usted ya cuenta con el integrado en su equipo. Lo primero que se debe hacer hacer es clonar este repositorio en su equipo, utilize el siguiente comando en su terminal:

      $ git clone https://github.com/DiegoInostroza/Practica-1-Estudio-NB-IoT


### 2. Compilando el 5G-air-simulator

Una vez clonado el repositorio en su equipo, primero necesitas instalar el make utility y la biblioteca de armadillo.
En sistemas Linux recientes, puede ejecutar:

      $  sudo apt install make libarmadillo-dev
        
Posteriormente usted podra compilar el simulador utilizando el siguiente comando en su terminal:

      $ cd 5G-air-simulator; make

### 3. Ejecutanto el 5G-air-simulator

Existen multiples tipos de escenarios para su estudio. Para corrar una simulación simple utilize el siguiente comando:

      $ ./5G-air-simulator Simple
      
Para conocer todas las posibilidades que ofrecen el 5G-air-simulator, emplee el siguiente comando:

      $ ./5G-air-simulator -h
      
### 4. Parametros y comandos para simular la tecnología NB-IoT

En cuanto a la tecnología NB-IoT, debera usar el siguiente comando:

     ./5G−air−simulator nbCell sched time r nUe bw nC spa tones cbrT cbrS aMax nCl [p0] [pAtt] [pRep] [rWind] [nP] [period] [o] [boW] (seed)
 
Y donde:

     sched    -  Tipo de scheduling (0 = FIFO y 1 = Round Robin)
     time     -  Tiempo de duración de la simulación (en segundos)
     r        -  Radio de la celda (en metros)
     nUe      -  Número de nodos en la celda
     bw       -  Ancha de Banda de la estación Base (desde 3 MHz en adelante)
     nC       -  Número de portadoras NB-IoT
     spa      -  Subespaciado de la portadora (3.75 kHz o 15 kHz)
     tones    -  Número de tonos (1, 3, 6 o 12)
     cbrT     -  Intervalo de tiempo entre transmisiones sucesivos por parte del mismo usuario (en segundos)
     cbrS     -  Tamaño de los paquetes (en bytes)
     aMax     -  Es el número máximo de reintentos para el procedimiento de acceso aleatorio
     nCl      -  Es el número de clases de cobertura
     [p0]     -  Es la probabilidad de que los usuarios pertenezcan a las clases de cobertura
     [pAtt]   -  Es el número de intentos de transmisión de preámbulo
     [pRep]   -  Es el número de repetición del preámbulo
     [rWind]  -  Es la duración de la ventana RAR
     [nP]     -  Es el número de preámbulos de RACH diferentes
     [period] -  Es la periodicidad de los recursos del RACH
     [o]      -  Es la hora de inicio de los recursos RACH
     [boW]    -  Es la duración de la ventana de retroceso del RACH
     (seed)   -  Puede variar de entre 1 a 50
     
 Los parametros que se utilizan para iniciar la ejecución del simulador, inician desde sched, por lo tanto si desea realizar una prueba utilize lo siguiente:
 
 
