pria(david).
pria(jack).
pria(john).
pria(ray).
pria(peter).

wanita(amy).
wanita(karen).
wanita(susan).
wanita(liza).
wanita(mary).

pasangan(david, amy).
pasangan(jack, karen).
pasangan(john, susan).

orang_tua(david, liza).
orang_tua(amy, liza).
orang_tua(david, john).
orang_tua(amy, john).
orang_tua(jack, ray).
orang_tua(karen, ray).
orang_tua(john, peter).
orang_tua(susan, peter).
orang_tua(john, mary).
orang_tua(susan, mary).

ayah(A, B) :- pria(A), orang_tua(A, B).
ibu(A, B) :- wanita(A), orang_tua(A, B).
anak(A, B) :- orang_tua(B, A).
saudara_kandung(A, B) :- orang_tua(X, A), orang_tua(X, B), A \= B.
kakek(A, B) :- pria(A), orang_tua(A, X), orang_tua(X, B).
nenek(A, B) :- wanita(A), orang_tua(A, X), orang_tua(X, B).
cucu(A, B) :- orang_tua(B, X), orang_tua(X, A).
