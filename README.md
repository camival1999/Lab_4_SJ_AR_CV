# Lab_4_SJ_AR_CV
Repositorio dedicado al desarrollo del laboratorio No. 4 de Robótica de la Universidad Nacional de Colombia
# Estudiantes: Camilo Valencia - Sara Jiménez - Alejandra Rojas
***
## Trabajo a desarrollar:

1. Generar las paths necesarios para representar las letras iniciales de los nombres de cada integrante por grupo.
Se deben tener en cuenta las siguientes restricciones:

- Las trayectorias a desarrollar deberán realizarse en un rango de velocidades entre 100 y 1000
- La zona tolerable de errores máxima debe ser de z10.
- El movimiento debe partir de una posición home especificada (puede ser el home del robot) y realizar
la trayectoria de cada letra con un trazo continuo, el movimiento debe finalizar en la misma posición
de home en la que se inició.
- Las trayectorias se deberán encontrar en el cuadrante positivo de xy.
- La amplitud de las letras será tal que permita la visualización del nombre escrito.
- Las letras deben estar separadas.
- Las letras debe dibujarse sobre la superficie borrable que yace encima de los robots.

**Workobject** 

Se debe replicar la tarea de escritura sobre el cuadrante x(+) y(-), en una superficie con una
inclinación de 30 deg usando un nuevo workobject reutilizando las trayectorias del cuadrante x(+) y(+).

## Herramienta:

1. Diseñar y construir una herramienta que permita fijar un marcador borrable al flanche del robot.

Se propusieron varias alternativas, como la impresión en manufactura aditiva de un sujetador que se anclara al porta herramientas del robot. Finalmente, se propone una herramienta sencilla, con materiales fáciles de conseguir, funcional y fácil de instalar. Esta herramienta tiene en cuenta los cambios de altura que pueda tener la superficie donde se escribirá, dando hasta 2.5 cm de tolerancia. 
La herramienta se apoya en la fuerza de gravedad para poder hacer contacto entre el marcador y la superficie, mientras el robot sigue la trayectoría siempre a la misma altura y genera el trazo de las letras.

La herramienta está contruida con una T de pvc de 1/2 pulgada, en un extremo se le ha insertado un tramo de tubo pvc de 1/2 pulgada de 40 cm de largo, el cual servirá para anclar al porta herramientas del robot. Dado que los torques y fuerzas de proceso son bastante pequeñas, bastó con insertar este tramo de tubo en el agujero que tiene el porta herramientas para asegurar su fijación. Por otro lado, en la T se insertó un marcador borrable al cual debía restringirse su desplazamiento, para lograrlo se instalaron en el marcador dos empaques de caucho de 18 mm de diámetro interno, con el material del empaque se aseguró la fijación requerida para detener el marcador en su recorrido. A continuación se muestra la herramienta construida:

<img src="https://i.postimg.cc/TP5GqSj3/Whats-App-Image-2022-06-15-at-10-51-53-AM.jpg" alt="drawing" width="300"/>

A continuación se muestra los modelos cad de las piezas y los planos correspondientes:

<img src="https://i.postimg.cc/8kY52qwN/herramienta.png" alt="drawing" width="300"/>

<img src="https://i.postimg.cc/3wBGHnb7/marcador.png" alt="drawing" width="300"/>

<img src="https://i.postimg.cc/130npvS6/T.png" alt="drawing" width="300"/>

<img src="https://i.postimg.cc/MTgVsXFj/caucho.png" alt="drawing" width="300"/>



2. Realizar el proceso de calibración de la herramienta construida empleado la técnica más apropiada para crear
el objeto Tooldata

3. Realizar la importación del modelo CAD de la herramienta diseñada a Robotstudio, comparar y analizar las
diferencias de los tooldata creados.

