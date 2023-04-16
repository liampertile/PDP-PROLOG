%las variables en prolog van con inicial Mayuscula, ej: Otro
%necesitamos una base de conocimiento o database la cual tiene hechos que ya conocemos y podemos consultar posteriormente.
%siempre que editemos nuestro archivo debemos guardar y ejecutar en la terminal "make." para asimilar todos los cambios
%la variable anonima es _ (alguien)
%principio de universo cerrado, cualquier cosa que no este en el database sera tomado como falso.


%dando un ejemplo (aca escribio es nuestro predicado y animalesSalvajes es nuestro individuo)
%los individuos van con minuscula, son nuestros Entes


%esto se lee, escribio animalesSalvajes darín?
escribio(darin, animalesSalvajes).


%esto se lee, existe algun autor que haya escrito animalesSalvajes?
escribio(_, animalesSalvajes).


%esto se lee, Que autor escribió animalesSalvajes?
escribio(Autor, animalesSalvajes).


%a este predicado esPelicula lo llamamos propiedad, aridad 1
esPelicula(animalesSalvajes).

%a este predicado esPelicula lo llamamos relacion, aridad 2 o +
escribio(darin, animalesSalvajes).



/*el ; es or
la , es and
not es not juju*/








