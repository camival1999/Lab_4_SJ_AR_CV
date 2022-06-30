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




### Comparación con el modelo CAD

***
# Trayectorias y uso del WorkObject

