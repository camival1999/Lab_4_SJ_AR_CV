# Laboratorio 4 - Robótica Industrial No. 1
Repositorio dedicado al desarrollo del laboratorio No. 4 de Robótica de la Universidad Nacional de Colombia
## Estudiantes: Camilo Valencia - Sara Jiménez - Alejandra Rojas
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
***

## Herramienta:

### Diseño y construcción de la herramienta

Se propusieron varias alternativas, como la impresión en manufactura aditiva de un sujetador que se anclara al porta herramientas del robot. Finalmente, se propone una herramienta sencilla, con materiales fáciles de conseguir, funcional y fácil de instalar. Esta herramienta tiene en cuenta los cambios de altura que pueda tener la superficie donde se escribirá, dando hasta 2.5 cm de tolerancia. 
La herramienta se apoya en la fuerza de gravedad para poder hacer contacto entre el marcador y la superficie, mientras el robot sigue la trayectoría siempre a la misma altura y genera el trazo de las letras.

La herramienta está contruida con una T de pvc de 1/2 pulgada, en un extremo tiene insertado un tramo de tubo pvc de 1/2 pulgada de 4 cm de largo, el cual servirá para anclar al plato porta herramientas del robot. Dado que los torques y fuerzas de proceso son bastante pequeñas, bastó con insertar este tramo de tubo en el agujero que tiene el porta herramientas para asegurar su fijación. Por otro lado, en la T se insertó un marcador borrable al cual debía restringirse su desplazamiento, para lograrlo se instalaron en el marcador dos empaques de caucho de 18 mm de diámetro interno, con el material del empaque se aseguró la fijación requerida para detener el marcador en su recorrido. A continuación se muestra la herramienta construida:

<img src="https://i.postimg.cc/TP5GqSj3/Whats-App-Image-2022-06-15-at-10-51-53-AM.jpg" alt="drawing" width="300"/>

Aquí se muestran los modelos cad de las piezas y los planos correspondientes:

<img src="https://i.postimg.cc/8kY52qwN/herramienta.png" alt="drawing" width="300"/>

<img src="https://i.postimg.cc/3wBGHnb7/marcador.png" alt="drawing" width="300"/>

<img src="https://i.postimg.cc/130npvS6/T.png" alt="drawing" width="300"/>

<img src="https://i.postimg.cc/MTgVsXFj/caucho.png" alt="drawing" width="300"/>



### Calibración de la herramienta creada
La calibración de la herramienta es uno de los pasos más importantes al realizar la programación de una rutina. Inicialmente para calibrar la herramienta creada primero lo realizamos directamente desde robot studio, iniciamos tomando las medidas desde el plato del mandril hasta el TCP, usando un calibrador pie de rey, al realizar estas medidas concluimos que los desfases se encuentran en : 
- X = 42.5 cm
- Y = 0.0cm
- Z = 68.4 cm
Para así crear la herramienta Soporte_pen en Robot studio:
![herramienta](https://user-images.githubusercontent.com/82957735/176579692-8074684c-2e1f-4764-a9be-e3104121f29b.jpeg)

Luego para poder comparar los resultados realizamos la calibración por medio de 4 poses diferentes usando el techpendant y el robot, en este caso se evidenció un poco de error ya que cómo la herramienta no se encontraba completamente apoyada pues no se encontraba en su pose natural, en este caso elegimos 4 poses bien diferentes y calibrabamos sobre la esquina del la punta del marcador. Al realizar esta calibración obtuvimos los siguientes resultados:

![h1](https://user-images.githubusercontent.com/82957735/176580192-7b7a125a-dba2-454a-9326-0cac06e4d47e.jpg)

![h2](https://user-images.githubusercontent.com/82957735/176580220-2de77549-d831-4629-8f17-26efa07adb93.jpg)

Donde podemos observar que las configuraciones son bastante parecidas a las que habíamos realizado inicialmente, además el pequeño cambio en y se debió a que para que no quedara completamente extendido al estar suspendido en el aire, usamos un tope extra que inclinó ligeramente la herramienta. 
Finalmente podemos apreciar los resultados donde se observa que el error minimo es de 0,5mm , lo cual es adecuado para la tarea que estamos desarrollando. 

![h3](https://user-images.githubusercontent.com/82957735/176580530-031328c1-3dbb-442e-bcba-1c699cfa4472.jpg)


***
# Trayectorias y uso del WorkObject
Para la creación de trayectorias se comenzó definiendo los WorkObjects que definen cada uno de los planos de trabajo que requeríamos, en este caso 3: Cuadrante_1 (X+Y+), Cuadrante_2(X+Y-) y Cuadrante_2_Inclinado. Además de estos, se creó otro workobject que contendrá los targets de forma que para realizar el trazado en cada cuadrante bastaría con mover el WorkObject Trayectorias a cada uno de los WorkObjects de cuadrante deseado. 
Aquí podemos ver la estación creada en Robot Studio:
![Estacion](https://user-images.githubusercontent.com/55710287/176576706-6da405eb-827c-49f6-8b6a-3838a618aa57.png)

Con los WorkObjects y Targets definidos como fue mencionado:
![Marcos](https://user-images.githubusercontent.com/55710287/176576823-0c81081d-581a-48d3-b7d6-58b3558dd130.png)
![Targets](https://user-images.githubusercontent.com/55710287/176576601-98a1784d-6e3f-4cde-ab08-2d5f103d4ffd.png)

Una vez definidos los Targets, se emplearon los comandos `moveL`, `moveLJ` y `moveC` para generar las trayectorias que describieran las iniciales SAC (Sara - Alejandra - Camilo) tomando en cuenta las restricciones de velocidad menor a 1000 mm/s y por supuesto reduciendola según el tipo de movimiento, mantener una zona de tolerania menor o igual a 10mm y realizando un retorno a la posición de home (Definida en su propio WorkObject para no verse afectada con los movimientos de los demás targets). Además de sólo generar las trayectorias, se debe tener en cuenta la configuración del robot en la que es alcanzado cada Target, para lo cual se tomó especial cuidado de revisar que los movimientos entre targets y entre letras fuese posible, buscando lograr un efecto adicional artístico jugando con distintas configuraciones.

Aquí podemos ver las trayectorias generadas en el cuadrante 1:
![Trayectorias](https://user-images.githubusercontent.com/55710287/176577362-4b6594fd-fc46-4716-a1fa-cfdeccfe5ded.png)

Para obtener las trayectorias en los otros cuadrantes, sencillamente se deplazaron los targets a los respectivos Workobjects:
![Cuadrante2](https://user-images.githubusercontent.com/55710287/176577441-f3989896-70a2-40b9-b26e-8d50c8a0d05a.png)
![Inclinado](https://user-images.githubusercontent.com/55710287/176577450-5c1e2fe1-446e-4ff7-9b98-66d71e2f5395.png)

Y para finalizar, realizamos la simulación:
https://youtu.be/WOMRrU63NW8
(Click en la imagen para acceder directamente)

[![iniciales](https://img.youtube.com/vi/WOMRrU63NW8/mqdefault.jpg)](https://youtu.be/WOMRrU63NW8) 

Una vez definidas y simuladas las trayectorias, obtenemos el módulo de RAPID que vemos a continuación y adjunto en el repositorio. Comenzamos con el modulo de CalibrationData, el cual contiene los WorkObjects y Tools definidos:
![Calib](https://user-images.githubusercontent.com/55710287/176578533-d0140c3a-225f-4c93-b5ec-2a9c39d87f0e.png)

Ahora pasamos al módulo principal, el cual contiene los Targets definidos y las rutinas de cada trayectoria generada.
![Lab41](https://user-images.githubusercontent.com/55710287/176578540-e2d10e89-962a-45f0-943e-6781cbe523c7.png)
![Lab42](https://user-images.githubusercontent.com/55710287/176578552-1e019edd-0649-45ed-8177-658e274fb78e.png)

Y cargamos estos módulos en el controlador del robot para verlo en acción:
https://youtu.be/txJBNLaKgSk
(Click en la imagen para acceder directamente)

[![iniciales](https://img.youtube.com/vi/txJBNLaKgSk/mqdefault.jpg)](https://youtu.be/txJBNLaKgSk) 
***

# Conclusiones
- En conclusión Robot studio es una excelente herramienta de simulación que permite programar robots y sus trayectorias desde una interfaz gráfica, este tipo de herramientas al incorporar un simulador permiten realizar la detección temprana de errores en el código.
- Las configuraciones entre los puntos objetivos del robot al realizar lineas rectas o circulares deben ser similares o muy iguales, porque si no pueden existir singularidades, estas singularidades son destacadas por el sistema de simulación de robot studio.
- Al diseñar una herramienta es muy importante tener en cuenta cómo se va a realizar el acople de manera que al momento de instalarla sea posible acceder a todas las juntas y tornillos, además realizar herramientas robustas permite aumentar la presición de la tarea.
- Poder calibrar una herramienta desde el FlexPendant haciendo uso del robot permite facilitar la calibración de herramientas con geometrías complejas, además calcula el error en la calibración de manera que se pueden realizar más puntos para así reducirlo
