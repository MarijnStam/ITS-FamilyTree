
/* Facts */

/* All familymembers defined */


male(marijn).
male(moos).
male(niels).
male(hans).
male(kees).
male(gerben).
male(siem).
male(gert).

female(sharon).
female(megan).
female(milou).
female(esmee).
female(noa).
female(ellie).
female(anouk).
female(lara).
female(ellen).
female(karen).
female(bianca).
female(sjaan).

/* parent relations */

parent_of(moos,hans).
parent_of(ellie,hans).
parent_of(moos,anouk).
parent_of(ellie,anouk).

parent_of(anouk,kees).
parent_of(lara,kees).
parent_of(marijn,kees).
parent_of(anouk,ellen).
parent_of(lara,ellen).
parent_of(marijn,ellen).
parent_of(sharon,siem).
parent_of(megan,siem).
parent_of(sharon,bianca).
parent_of(megan,bianca).
parent_of(milou,gerben).
parent_of(esmee,gerben).
parent_of(noa,gerben).
parent_of(milou,karen).
parent_of(esmee,karen).
parent_of(noa,karen).

parent_of(siem,gert).
parent_of(kees,gert).
parent_of(gerben,gert).
parent_of(siem,sjaan).
parent_of(kees,sjaan).
parent_of(gerben,sjaan).

relation(hans,anouk).
relation(niels,lara).
relation(marijn,renee).
relation(kees,ellen).
relation(siem,bianca).
relation(gerben,karen).
relation(gert,sjaan).

/* Rules */
father_of(X,Y):- male(Y),
    parent_of(X,Y).

mother_of(X,Y):- female(Y),
    parent_of(X,Y).

child_of(X,Y):-
    parent_of(Y,X).

son_of(X,Y):- male(Y),
    parent_of(Y,X).

daughter_of(X,Y):- female(Y),
    parent_of(Y,X).

sibling_of(X,Y):-
    parent_of(X,Z), parent_of(Y,Z), X \= Y.

brother_of(X,Y):- male(Y), 
    sibling_of(X,Y), X \= Y.

sister_of(X,Y):- female(Y),
    sibling_of(X,Y), X \= Y.

uncle_of(X,Y):- male(Y),
    parent_of(X,Z), brother_of(Z,Y).

uncle_of(X,Y):- male(Y),
    parent_of(X,Z), sibling_of(Z,M), relation(Y,M).

aunt_of(X,Y):- female(Y),
    parent_of(X,Z), sister_of(Z,Y).

aunt_of(X,Y):- female(Y),
    parent_of(X,Z), sibling_of(Z,M), relation(M,Y).

cousin_of(X,Y):-
    uncle_of(X,Z), child_of(Z,Y).


