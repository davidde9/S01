
% Fatos: Progenitores (pai_ou_mae, filho) - HIERARQUIA AMPLIADA
progenitor(urano, cronos).
progenitor(gaia, cronos).
progenitor(urano, oceano).
progenitor(gaia, oceano).
progenitor(cronos, zeus).
progenitor(reia, zeus).
progenitor(cronos, poseidon).
progenitor(reia, poseidon).
progenitor(zeus, atena).
progenitor(zeus, apolo).
progenitor(hera, apolo).
progenitor(zeus, artemis).
progenitor(letó, artemis).
progenitor(zeus, ares).
progenitor(hera, ares).
progenitor(zeus, hefesto).
progenitor(hera, hefesto).
progenitor(poseidon, tritao).
progenitor(zeus, perseu). % Herói, filho de um deus
progenitor(dânae, perseu).
progenitor(atena, erictônio).
progenitor(cronos, hades).
progenitor(reia, hades).

% Fatos: Poderes e Domínios
dominio(zeus, ceu).
dominio(zeus, trovão).
dominio(poseidon, mar).
dominio(poseidon, terremoto).
dominio(hades, submundo).
dominio(atena, sabedoria).
dominio(atena, guerra_estrategica).
dominio(ares, guerra_brutal).
dominio(apolo, sol).
dominio(apolo, musica).
dominio(artemis, caça).
dominio(artemis, lua).
dominio(hefesto, fogo).
dominio(hefesto, forja).
dominio(afrodite, beleza).
dominio(afrodite, amor).
dominio(cronos, tempo).

% Fatos: Armas e Artefatos (deus, arma)
arma(zeus, raio).
arma(poseidon, tridente).
arma(hades, elmo_escuridao).
arma(atena, escudo_aegis).
arma(perseu, espada_adamantina).

% Fatos: Características e Títulos (deus, caracteristica)
caracteristica(zeus, rei).
caracteristica(hera, rainha).
caracteristica(hades, invisivel).
caracteristica(hefesto, ferreiro).
caracteristica(artemis, virgem).
caracteristica(perseu, mortal).

% Fatos: Relações de Aliança (Aliança é simétrica)
aliado(zeus, poseidon).
aliado(poseidon, zeus).
aliado(atena, apolo).
aliado(apolo, atena).
aliado(ares, hades).
aliado(hades, ares).
aliado(hefesto, atena).
aliado(atena, hefesto).

% Fatos: Localização ou Assinatura
local_principal(zeus, olimpo).
local_principal(poseidon, atlântida).
local_principal(hades, submundo).
local_principal(apolo, olimpo).
local_principal(artemis, florestas).

divindade_olimpica(Deus):-
    progenitor(cronos, Deus),
    dominio(Deus, X),
    (X=ceu; X=mar; X=submundo).

%divindade_olimpica(X) = zeus, poseidon, hades

deus_maior(Deus) :-
    dominio(Deus, X),
    dominio(Deus, Y),
    X \= Y,
    local_principal(Deus, olimpo).

%deus_maior(X) = zeus, apolo

irmaos_germanos(A, B) :-
    progenitor(X, A),
    progenitor(Y, A),
    progenitor(X, B),
    progenitor(Y, B),
    X \= Y,
    A \= B.

%irmaos_germanos(zeus, X) = poseidon, hades

ancestral(A, D) :-
    progenitor(A, D).

ancestral(A, D) :-
    progenitor(A, Z),
    ancestral(Z, D).

%ancestral(urano, X) = X = cronos
%X = oceano
%X = zeus
%X = poseidon
%X = hades
%X = atena
%X = apolo
%X = artemis
%X = ares
%X = hefesto
%X = perseu
%X = erictônio
%X = tritao
