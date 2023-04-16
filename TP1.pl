%Trabajo Práctico N_1 PdeP UTN-FRD, Tomás Liam Pertile

%Material utilizado: el Docs de la clase anterior, https://www.tutorialspoint.com/prolog/index.htm , StackOverflow.

%database

human(tomas).
human(farah).
human(javiera).
human(claudio).
human(julio).
human(cecilia).
human(doris).
human(ruben).

%relationships

dad(claudio, tomas).
dad(julio, javiera).
dad(claudio, farah).
dad(ruben, claudio).
mom(javiera, farah).
mom(javiera, tomas).
mom(cecilia, javiera).
mom(doris, claudio).


%ages
age(tomas, 19).
age(farah, 4).
age(javiera, 44).
age(claudio, 41).
age(julio, 69).
age(cecilia, 66).
age(doris, 64).

%rules

%para saber si es alguien es abuelo de otro alguien           
grandpa(C,A) :-              
    (dad(B,A) ; mom(B,A)),
    dad(C,B).

%para saber si es alguien abuela de otro alguien 
grandma(C,A) :-
    (dad(B,A) ; mom(B,A)),
    mom(C,B).

%para saber si son hermanos (en el caso de hermanastros sacariamos la parte 1 o 2)
siblings(X1, X2) :-
    (dad(P, X1), dad(P, X2)),   %1
    (mom(M, X1), mom(M, X2)),   %2
    X1 \= X2.

%para saber si tiene un hijo

haschild(X) :- 
    dad(X,_) ; mom(X,_).


