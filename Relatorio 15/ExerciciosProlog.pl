alto_impacto(D) :-
    creditos(D, C),
    C > 5,
    prerequisito(D, D1),
    prerequisito(D, D2),
    D1 \= D2.

falta_concluir(Aluno, Disciplina) :-
    prerequisito(Disciplina, _),
    \+ concluiu(Aluno, Disciplina).

aluno_apto(Aluno, Disciplina) :-
    area(Disciplina, Area),
    Area \= fundamental,
    forall(prerequisito(Dreq, Disciplina),
           concluiu(Aluno, Dreq)).

especialista_comp(Aluno) :-
    concluiu(Aluno, D1),
    concluiu(Aluno, D2),
    D1 \= D2,
    area(D1, computacao),
    area(D2, computacao).

deficiencia_mat(Aluno) :-
    \+ (concluiu(Aluno, D), area(D, matematica)).

disciplina_raiz(D) :-
    \+ prerequisito(_, D).

disciplina_folha(D) :-
    \+ prerequisito(D, _).
