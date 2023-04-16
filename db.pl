%database
mujer(farah).
mujer(javiera).
mujer(cecilia).

hombre(tomas).
hombre(claudio).
hombre(julio).

madre(javiera).
padre(claudio).
madre(cecilia).
padre(julio).

madre_de(javiera, cecilia).
madre_de(tomas, javiera).
madre_de(farah, javiera).
padre_de(javiera, julio).
padre_de(tomas, claudio).
padre_de(farah, claudio).

edad(farah, 4).
edad(tomas, 19).
edad(javiera, 44).
edad(claudio, 41).

%X2 parent of X1
parent(X1, X2) :-
    madre_de(X1, X2) ; padre_de(X1,X2).



%farah e Y son hermanos => la madre de farah es C y la madre de Y es C y el padre de farah es Z y el padre de Y es Z.
%tambien podria haber hecho hermanastros, lo que implica que no si o si deben ser misma madre o mismo padre, ej: con mismo padre ya se cumple
hermanos(farah,Y) :-
    madre_de(farah, C),
    madre_de(Y, C),
    padre_de(farah, Z),
    padre_de(Y, Z).

%para saber si el abuelo de tomas es julio se deben cumplir las siguientes condiciones: que julio sea hombre y que el padre de javiera sea julio.
abuelo_de(tomas, julio) :-
    hombre(julio),
    padre_de(javiera, julio).
