MODULE CalibData
    TASK PERS tooldata Soporte_Pen:=[TRUE,[[42.5,0,68.4],[0.707106781,0,0.707106781,0]],[0.1,[565.528,0,645.3],[1,0,0,0],0,0,0]];
    TASK PERS wobjdata BaseRobot:=[FALSE,TRUE,"",[[0,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
! Los targets están definidos sobre el workObject "Trayectorias", 
! y los marcos de trabajo son los cuadrantes: 
    !TASK PERS wobjdata Trayectorias:=[FALSE,TRUE,"",[[450,550,77],[0.707106781,0,0,-0.707106781]],[[0,0,0],[1,0,0,0]]];
    !TASK PERS wobjdata Cuadrante_1:=[FALSE,TRUE,"",[[450,550,77],[0.707106781,0,0,-0.707106781]],[[0,0,0],[1,0,0,0]]];
    !TASK PERS wobjdata Cuadrante_2:=[FALSE,TRUE,"",[[450,-200,77],[0.5,0,0,-0.866025404]],[[0,0,0],[1,0,0,0]]];
    !TASK PERS wobjdata Cuadrante_2_Inclinado:=[FALSE,TRUE,"",[[450,-200,177],[0.482962913,-0.129409523,0.224143868,-0.836516304]],[[0,0,0],[1,0,0,0]]];
! Para las pruebas reales, descomentar cada línea según el cuadrante que se desee trabajar
! En el orden Cuadrante 1 -> Cuadrante 2 -> Plano inclinado
    TASK PERS wobjdata Trayectorias:=[FALSE,TRUE,"",[[450,550,77],[0.707106781,0,0,-0.707106781]],[[0,0,0],[1,0,0,0]]];
    !TASK PERS wobjdata Trayectorias:=[FALSE,TRUE,"",[[450,-200,77],[0.5,0,0,-0.866025404]],[[0,0,0],[1,0,0,0]]];
    !TASK PERS wobjdata Trayectorias:=[FALSE,TRUE,"",[[450,-200,177],[0.482962913,-0.129409523,0.224143868,-0.836516304]],[[0,0,0],[1,0,0,0]]];
ENDMODULE