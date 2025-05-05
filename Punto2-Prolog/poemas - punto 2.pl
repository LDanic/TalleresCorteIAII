% Sistema Experto de Clasificacion de Poemas
:- encoding(utf8).
:- dynamic autor/3.              % autor(Nombre, Nacionalidad, Genero)
:- dynamic poema/5.              % poema(Nombre, Autor, Anio, Caracteristicas, tipo)

% Caracteristicas: estructura de lista [versos(N), metrica(M), estrofa(E), rima(R), tema(T)]


% --------------------- Hechos iniciales ---------------------
% ------------------ Autores ------------------
% autor(Nombre, Nacionalidad, Genero)
autor('William Shakespeare', 'Inglaterra', 'M').
autor('Garcilaso de la Vega', 'España', 'M').
autor('Sor Juana Inés de la Cruz', 'México', 'F').
autor('Matsuo Bashō', 'Japón', 'M').
autor('Yosa Buson', 'Japón', 'M').
autor('Chiyo‑ni', 'Japón', 'F').
autor('Vicente Espinel', 'España', 'M').
autor('Miguel Hernández', 'España', 'M').
autor('Alfonsina Storni', 'Argentina', 'F').
autor('Federico García Lorca', 'España', 'M').
autor('Antonio Machado', 'España', 'M').
autor('Gloria Fuertes', 'España', 'F').
autor('Gabriela Mistral', 'Chile', 'F').
autor('Juana de Ibarbourou', 'Uruguay', 'F').
autor('Jorge Manrique', 'España', 'M').
autor('José María Heredia', 'Cuba', 'M').
autor('pepe', 'Cuba', 'M').

% ------------------ Poemas ------------------
% poema(Nombre, Autor, Anio, Caracteristicas, tipo)

poema('Soneto V', 'Sor Juana Inés de la Cruz', 1680, [versos(4), metrica(endecasilabo), estrofa(cuarteto), rima(consonante), tema(amor)], desconocido).
poema('En tanto que de rosa y azucena', 'Garcilaso de la Vega', 1533, [versos(3), metrica(endecasilabo), estrofa(terceto), rima(consonante), tema(amor)], desconocido).
poema('Soneto XVIII', 'William Shakespeare', 1609, [versos(4), metrica(endecasilabo), estrofa(cuarteto), rima(consonante), tema(amor)], desconocido).

poema('Furu ike ya', 'Matsuo Bashō', 1686, [versos(3), metrica(5_7_5), estrofa(simple), rima(libre), tema(naturaleza)], desconocido).
poema('Old pond; a frog jumps in...', 'Yosa Buson', 1763, [versos(3), metrica(5_7_5), estrofa(simple), rima(libre), tema(naturaleza)], desconocido).
poema('Morning glory', 'Chiyo‑ni', 1703, [versos(3), metrica(5_7_5), estrofa(simple), rima(libre), tema(naturaleza)], desconocido).

poema('Diversas rimas', 'Vicente Espinel', 1591, [versos(10), metrica(octosilabo), estrofa(decima_Espinela), rima(consonante), tema(humor)], desconocido).
poema('Nanas de la cebolla', 'Miguel Hernández', 1939, [versos(10), metrica(octosilabo), estrofa(decima_Espinela), rima(consonante), tema(humor)], desconocido).
poema('Décima XVII', 'Alfonsina Storni', 1922, [versos(10), metrica(octosilabo), estrofa(decima_Espinela), rima(consonante), tema(humor)], desconocido).

poema('Romance de la luna, luna', 'Federico García Lorca', 1928, [versos(variable), metrica(octosilabo), estrofa(tira_Continua), rima(asonante), tema(amor)], desconocido).
poema('Romance sonámbulo', 'Federico García Lorca', 1928, [versos(variable), metrica(octosilabo), estrofa(tira_Continua), rima(asonante), tema(amor)], desconocido).
poema('Proverbios y cantares XXIX', 'Antonio Machado', 1907, [versos(variable), metrica(octosilabo), estrofa(tira_Continua), rima(asonante), tema(amor)], desconocido).

poema('Coplas por la muerte de su padre', 'Jorge Manrique', 1476, [versos(4), metrica(octosilabo), estrofa(estrofa_copla), rima(asonante), tema(tradiciones)], desconocido).
poema('Mi caballo mago', 'Gloria Fuertes', 1958, [versos(4), metrica(octosilabo), estrofa(estrofa_copla), rima(asonante), tema(tradiciones)], desconocido).
poema('Coplas a la muerte de Luis de Góngora', 'Gloria Fuertes', 1962, [versos(4), metrica(octosilabo), estrofa(estrofa_copla), rima(asonante), tema(tradiciones)], desconocido).

poema('Oda al tomate', 'Pablo Neruda', 1954, [versos(variable), metrica(irregular), estrofa(libre), rima(consonante), tema(admiracion)], desconocido).
poema('Oda a la alegría', 'Pablo Neruda', 1972, [versos(variable), metrica(irregular), estrofa(libre), rima(consonante), tema(admiracion)], desconocido).
poema('Oda al niño', 'Gabriela Mistral', 1925, [versos(variable), metrica(irregular), estrofa(libre), rima(consonante), tema(admiracion)], desconocido).

poema('Elegía a Ramón Sijé', 'Miguel Hernández', 1935,  [versos(variable), metrica(irregular), estrofa(libre), rima(consonante), tema(dolor)], desconocido).
poema('Coplas por la muerte de Don Rodrigo Manrique', 'Jorge Manrique', 1476,  [versos(variable), metrica(irregular), estrofa(libre), rima(consonante), tema(dolor)], desconocido).
poema('La muerte del rey don Rodrigo', 'Juana de Ibarbourou', 1950,  [versos(variable), metrica(irregular), estrofa(libre), rima(consonante), tema(dolor)], desconocido).

poema('Égloga I', 'Garcilaso de la Vega', 1530, [versos(variable), metrica(endecasilabo), estrofa(libre), rima(consonante), tema(naturaleza)], desconocido).
poema('Égloga II', 'Garcilaso de la Vega', 1530, [versos(variable), metrica(endecasilabo), estrofa(libre), rima(consonante), tema(naturaleza)], desconocido).
poema('Égloga III', 'Garcilaso de la Vega', 1530, [versos(variable), metrica(endecasilabo), estrofa(libre), rima(consonante), tema(naturaleza)], desconocido).

poema('Himno Nacional de Colombia', 'José María Heredia', 1819,  [versos(variable), metrica(regular), estrofa(libre), rima(consonante), tema(patriotismo)], desconocido).
poema('Himno a la alegría', 'Miguel Ríos', 1970,  [versos(variable), metrica(regular), estrofa(libre), rima(consonante), tema(patriotismo)], desconocido).
poema('Himno a la libertad', 'Gloria Fuertes', 1975,  [versos(variable), metrica(regular), estrofa(libre), rima(consonante), tema(patriotismo)], desconocido).

poema('El Sol', 'Guillaume Apollinaire', 1918, [versos(variable), metrica(irregular), estrofa(libre), rima(libre), tema(visualizacion)], desconocido).
poema('El Corazón', 'Guillaume Apollinaire', 1918, [versos(variable), metrica(irregular), estrofa(libre), rima(libre), tema(visualizacion)], desconocido).
poema('Caligrama Mariposa', 'Gloria Fuertes', 1960, [versos(variable), metrica(irregular), estrofa(libre), rima(libre), tema(visualizacion)], desconocido).


% --------------------- Menu Principal ---------------------
menu :-
    repeat,
    nl, write('--- Menú Principal ---'), nl,
    write('1. Añadir autor'),        nl,
    write('2. Añadir poema'),        nl,
    write('3. Clasificar poema'),    nl,
    write('4. Hacer hipótesis'),     nl,
    write('5. Editar poema'),        nl,
    write('6. Salir'),               nl,
    write('Seleccione opción: '), read(Op), nl,
    ejecutar_opcion(Op),
    Op == 6, !.

ejecutar_opcion(1) :- add_autor.
ejecutar_opcion(2) :- add_poema.
ejecutar_opcion(3) :- clasificar_poema.
ejecutar_opcion(4) :- hacer_hipotesis.
ejecutar_opcion(5) :- editar_poema.
ejecutar_opcion(6) :- write('¡Hasta luego!'), nl.

% -------------- Agregar Autor --------------
add_autor :-
    write('Ingrese nombre del autor: '),        read(N),
    write('Ingrese nacionalidad: '),           read(Nac),
    write('Ingrese genero (M/F): '), read(G),
    assertz(autor(N, Nac, G)),
    write('Autor agregado.'), nl.

% -------------- Agregar Poema --------------
add_poema :-
    write('Nombre del poema: '),        read(P),
    listar_autores(Autores),
    seleccionar_autor(Autores, A),
    write('Año de publicación: '),      read(Y),
    % Versos—tamaños de estrofa
    write('Seleccione versos por estrofa'), nl,
    write(' 1. 3'), nl,
    write(' 2. 4'), nl,
    write(' 3. 10'), nl,
    write(' 4. Numero variable/no fijo'), nl,
    read(V), ingresar_versos(V, NumVer),
    % Métrica
    write('Seleccione métrica:'), nl,
    write(' 1. Endecasilábica'), nl,
    write(' 2. Octosilábica'), nl,
    write(' 3. 5-7-5'), nl,
    write(' 4. Irregular'), nl,
    write(' 5. Regular'), nl,
    write(' 6. No conozco'), nl,
    read(Mopt), inferir_metrica(Mopt, M),
    % Rima
    write('Seleccione tipo de rima:'), nl,
    write(' 1. Consonante'), nl,
    write(' 2. Asonante'), nl,
    write(' 3. Libre'), nl,
    write(' 4. No conozco'), nl,
    read(Ropt), inferir_rima(Ropt, R),
    % Tema
    write('Seleccione tema:'), nl,
    write(' 1. Amor'), nl,
    write(' 2. Naturaleza'), nl,
    write(' 3. Humor'), nl,
    write(' 4. Tradiciones'), nl,
    write(' 5. Admiración'), nl,
    write(' 6. Dolor y muerte'), nl,
    write(' 7. Patriotismo'), nl,
    write(' 8. Visualización'), nl,
    read(Topt), tema_texto(Topt, T),
    inferir_estrofa(NumVer, M, R, E),
    Caracteristicas = [versos(NumVer), metrica(M), estrofa(E), rima(R), tema(T)],
    assertz(poema(P, A, Y, Caracteristicas, desconocido)),
    write('Poema agregado.'), nl.


% ---------------- Lista los autores actuales ----------------
listar_autores(Autores) :-
    findall(Nombre, autor(Nombre, _, _), Autores),
    write('Autores disponibles:'), nl,
    print_list(Autores), nl.

% ---------------- Valida que el autor esté en la lista ----------------
seleccionar_autor(Autores, Autor) :-
    write('Seleccione un autor de la lista: '), read(AutorIngresado),
    (member(AutorIngresado, Autores) ->
        Autor = AutorIngresado
    ;
        write('Ese autor no se encuentra en nuestra lista. Intente nuevamente.'), nl,
        seleccionar_autor(Autores, Autor)
    ).

% ---------------- Ingresar num Versos ----------------
ingresar_versos(1, 3) :- !.                              
ingresar_versos(2, 4) :- !.                                
ingresar_versos(3, 10) :- !.                             
ingresar_versos(4, variable):- !.                             

% ---------------- Inferencia Metrica ----------------
inferir_metrica(1, endecasilabo) :- !.                              %R6
inferir_metrica(2, octosilabo) :- !.                                %R7
inferir_metrica(3, 5_7_5)         :- !.                             %R8
inferir_metrica(4, irregular)     :- !.                             %R5
inferir_metrica(5, regular)     :- !.                               %R4                         
inferir_metrica(6, M) :- preguntar_metrica(M).

preguntar_metrica(M) :-
    write('¿Todos los versos tienen el mismo número de sílabas?'), nl,
    write(' 1. Si'), nl,
    write(' 2. No'), nl,
    read(R),
    (R == 1 -> 
        write('¿Cuántas sílabas? '), nl,
        write(' 1. 11'), nl,
        write(' 2. 8'), nl,
        write(' 3. Primer y tercer verso tienen 5 silabas y el segundo tiene 7'), nl,
        read(N), 
        (    N==1->M=endecasilabo 
            ;N==2->M=octosilabo
            ;N==3->M=5_7_5)
        ;   write('Ingresaste una respuesta invalida, vuelve a intentar'),
            preguntar_metrica(M)  % Reintenta
        
    ; R == 2 ->
        M=irregular
    ; write('Ingresaste una respuesta invalida, vuelve a intentar'),
      preguntar_metrica(M)  % Reintenta
    ).

% ---------------- Inferencia de Rima ----------------
inferir_rima(1, consonante) :- !.                                    %R1
inferir_rima(2, asonante)   :- !.                                    %R2
inferir_rima(3, libre)       :- !.                                   %R3
inferir_rima(4, R) :- preguntar_rima(R).

preguntar_rima(R):-
    write('¿Coindicen vocales y/o consonantes?'), nl,
    write(' 1. Si'), nl,
    write(' 2. No'), nl,
    read(S),
    (S == 1 -> 
        write('¿Coinciden consonantes y vocales?'), nl,
        write(' 1. Si'), nl,
        write(' 2. No'), nl,
        read(C),
        (C == 1 ->
            R=consonante
        ;C == 2 -> 
            R=asonante
        ;write('Ingresaste una respuesta invalida, vuelve a intentar'),
        preguntar_rima(R) % Reintenta
        )  
    ;S == 2 -> R=libre
    ; write('Ingresaste una respuesta invalida, vuelve a intentar'),
      preguntar_rima(R)  % Reintenta
    ).

% ---------------- Inferencia de Estrofa ----------------
inferir_estrofa(3, endecasilabo, consonante, terceto).              %R9
inferir_estrofa(4, endecasilabo, consonante, cuarteto).             %R10
inferir_estrofa(variable, octosilabo, asonante, tira_Continua).     %R11
inferir_estrofa(10, octosilabo, consonante, decima_Espinela).       %R12
inferir_estrofa(3, 5_7_5, _, simple).                               %R13
inferir_estrofa(4, octosilabo, asonante, estrofa_copla).            %R14
inferir_estrofa(variable, _, _, libre).                             %R15

% ---------------- Tema ----------------
tema_texto(1, amor).
tema_texto(2, naturaleza).
tema_texto(3, humor).
tema_texto(4, tradiciones).
tema_texto(5, admiracion).
tema_texto(6, dolor).
tema_texto(7, patriotismo).
tema_texto(8, visualizacion).

% ---------------- Clasificacion de poemas --------------
clasificar_poema :-
    findall(P, poema(P,_,_,_,_), Poemas),
    clasificar_poema(Poemas).

clasificar_poema(Poemas) :-
    write('Poemas disponibles:'), nl,
    print_list(Poemas),
    write('Seleccione un poema: '), read(Po), nl,
    ( member(Po, Poemas) ->
        poema(Po, A, Y, C, Clas),
        ( Clas \= desconocido ->
            write('Y. El poema es de tipo: '), write(Clas), nl,
            explicacion([], C, 'Porque tiene las siguientes caracteristicas: ')
        ;
            ( tipo_poema(C, Tipo) ->
                retract(poema(Po, A, Y, C, Clas)),
                assertz(poema(Po, A, Y, C, Tipo)),
                write('N. El poema es de tipo: '), write(Tipo), nl,
                explicacion([], C, 'Porque tiene las siguientes caracteristicas: ')
            ;
                write('No se puede clasificar el poema con las caracteristicas actuales.'), nl
            )
        )
    ;
        write('Ese poema no existe. Digita uno de la lista.'), nl, nl,
        clasificar_poema(Poemas)
    ).


% ---------------- Hipotesis ----------------
hacer_hipotesis :-
    findall(P, poema(P,_,_,_,_), Poemas),
    Tipos = ['soneto', 'haiku', 'decima', 'romance', 'copla', 'oda', 'elegia', 'egloga', 'himno', 'caligrama'],
    hacer_hipotesis(Poemas, Tipos).

hacer_hipotesis(Poemas, Tipos) :-
    write('Poemas disponibles:'), nl,
    print_list(Poemas), nl,
    write('Seleccione poema: '), read(Po), nl,
    ( member(Po, Poemas) ->
        write('Seleccione tipo de poema:'), nl,
        print_list(Tipos), nl,
        read(T), nl,
        ( member(T, Tipos) ->
            poema(Po, _, _, C, _),
            ( tipo_poema(C, T) ->
                write('Tienes razón! El poema es de tipo '), write(T), nl,
                explicacion([], C, 'Porque tiene las siguientes caracteristicas: ')
            ; poema(P2, _, _, C2, T) ->
                write('Este no poema no es de tipo '), write(T), nl,
                atomic_list_concat(['Porque el poema tiene estas caracteristicas que no son de un poema tipo ', T], '', Msg),
                explicacion(C2, C, Msg),
                write('Un ejemplo de este tipo es el poema '), write(P2), nl
            ; write('Y no se encontró un poema de este tipo, no puedo darte ejemplos'), nl )
        ; write('Tipo inválido. Intente de nuevo.'), nl, hacer_hipotesis(Poemas, Tipos) )
    ; write('Ese poema no existe. Intente de nuevo.'), nl, hacer_hipotesis(Poemas, Tipos) ).



% ---------------- Editar Poema ----------------
editar_poema :-
    findall(P, poema(P,_,_,_,_), Lista), write('Poemas:'), nl, print_list(Lista), nl,
    write('Seleccione poema a editar: '), read(Po), nl,
    poema(Po, A, Y, C, Clas),
    write('Caracteristicas actuales: '), write(C), nl,
    % Pedir nuevas caracteristicas
    write('--- Editar Caracteristicas ---'), nl,
    write('Versos por estrofa (3;4;10;variable): '), read(V), nl,
    write('Metrica (1:endecasilabo,2:octosilabo,3:5-7-5,4:irregular,5:regular,6:otro): '), read(Mopt), inferir_metrica(Mopt, M), nl,
    write('Rima (1:consonante,2:asonante,3:libre,4:otro): '), read(Ropt), inferir_rima(Ropt, R), nl,
    write('Tema (1:amor,2:naturaleza,3:humor,4:tradiciones,5:admiracion,6:dolor,7:patriotismo,8:visualizacion): '), read(Topt), tema_texto(Topt, T), nl,
    inferir_estrofa(V, M, R, E), nl,
    NewC = [versos(V), metrica(M), estrofa(E), rima(R), tema(T)],
    retract(poema(Po, A, Y, C, Clas)),
    assertz(poema(Po, A, Y, NewC, desconocido)),
    write('Poema editado y clasificación reiniciada.'), nl.

% ---------------- Regla auxiliar para imprimir lista ----------------
print_list([]).
print_list([PrimerElem|Resto]) :- write('- '), write(PrimerElem), nl, print_list(Resto).

% ---------------- Regla auxiliar para imprimir explicacion de clasificacion e hipotesis ----------------
explicacion(CaracTipo, CaractReferente, Msg) :- findall(Caracteristica,
                                                (member(Caracteristica, CaractReferente),
                                                \+ member(Caracteristica, CaracTipo)),
                                                Diferencias),
                                                write(Msg), nl,
                                                print_list(Diferencias).

% ---------------- Reglas de Inferencia (R16 - R26) ---------------

% R16-R26: Tipos
tipo_poema(C, soneto)  :- member(metrica(endecasilabo),C),
                        (member(estrofa(terceto),C); member(estrofa(cuarteto),C)), 
                        member(tema(amor),C).                                                               % R16,R17

tipo_poema(C, haiku)   :- member(estrofa(simple),C),
                        member(rima(libre),C),
                        member(tema(naturaleza),C).                                                         % R18

tipo_poema(C, decima)  :- member(estrofa(decima_Espinela),C), member(tema(humor),C).                        % R19

tipo_poema(C, romance) :- member(estrofa(tira_Continua),C), member(tema(amor),C).                           % R20

tipo_poema(C, copla)   :- member(estrofa(estrofa_copla),C), member(tema(tradiciones),C).                    % R21

tipo_poema(C, oda)     :- member(estrofa(libre),C),
                        member(metrica(irregular),C),
                        member(rima(consonante),C),
                        member(tema(admiracion),C).                                                         % R22

tipo_poema(C, elegia)  :- member(estrofa(libre),C),
                        member(metrica(irregular),C),
                        member(rima(consonante),C),
                        member(tema(dolor),C).                                                              % R23

tipo_poema(C, egloga)  :- member(estrofa(libre),C),
                        member(metrica(endecasilabo),C),
                        member(rima(consonante),C),
                        member(tema(naturaleza),C).                                                         % R24

tipo_poema(C, himno)   :- member(estrofa(libre),C),
                        member(metrica(regular),C),
                        member(rima(consonante),C),
                        member(tema(patriotismo),C).                                                         % R25

tipo_poema(C, caligrama):- member(estrofa(libre),C),
                        member(metrica(irregular),C),
                        member(rima(libre),C),
                        member(tema(visualizacion),C).                                                         % R26


% ---------------- Iniciar Menu ----------------
:- initialization(menu, main).

