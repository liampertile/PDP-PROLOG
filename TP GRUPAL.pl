% tieneRol(Empleado, Rol, Sector).
tieneRol(romeo, administrador, ventas).
tieneRol(juanLuis, desarrollador, marketing).
tieneRol(romina, administrador, marketing).
tieneRol(juanLuis, desarrollador, ventas).
tieneRol(lucia, analistaDeDatos, marketing).


% puede(Rol, Accion).
puede(administrador, editar).
puede(administrador, borrar).
puede(administrador, agregar).
puede(administrador, leer).
puede(analistaDeDatos, leer).


% log(Empleado, Accion, Archivo).
log(romeo, leer, "ventasMensuales.pdf").
log(romeo, agregar, "resumenVentas.xsl").
log(romina, editar, "informe.xsl").
log(lucia, editar, "informe.xsl").
log(juanLuis, borrar, "ventas.prolog").


%Archivos(Archivo, Sector)
archivo("ventasMensuales.pdf", ventas).
archivo("informe.xsl", marketing).
archivo("ventas.prolog", ventas).

% Punto 1: Multifunción

multifuncion(Empleado,Rol,Sector):-
    tieneRol(Empleado,Rol,Sector),
    tieneRol(Empleado,OtroRol,Sector),
    Rol \= OtroRol.

% Especialista

especialistaEn(Empleado,Rol):-
    tieneRol(Empleado,Rol,Sector),
    tieneRol(Empleado,Rol,OtroSector),
    Sector\=OtroSector.

% Diversificado

diversificado(Empleado):-
    tieneRol(Empleado,Rol,Sector),
    tieneRol(Empleado,OtroRol,OtroSector),
    Rol \= OtroRol , Sector \= OtroSector.

% Punto 2: Edicion especial

edicion(Archivo, Empleado):-
   log(Empleado, editar, Archivo).

/* Se le puede dar otros usos como saber cuantos editaron un archivo
tambien que persona en especifico editó, que archivo editó la mayoria, etc.
Si, es inversible porque tiene la capacidad de completar la variable que falta. */

% Punto 3:

accionProhibida(Empleado, Accion, Archivo) :-
    tieneRol(Empleado, Rol,_),
    not(puede(Rol, Accion)),
    log(Empleado, Accion, Archivo).
    
    
     
    