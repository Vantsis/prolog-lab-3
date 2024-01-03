is_prime(2) :-
    !.
is_prime(3) :-
    !.
is_prime(X) :-
    X > 3,
    X mod 2 =\= 0,
    is_prime_(X, 3).

is_prime_(X, N) :-
    (  N*N > X
    -> true
    ;  X mod N =\= 0,
       M is N + 2,
       is_prime_(X, M)
    ).

greatest_prime(D,P,P):-
    is_prime(P),
    (   D mod P) =:= 0,!.
greatest_prime(D,N,P):-
    N1 is N-1,
    greatest_prime(D,N1,P).

smallest_prime(D,P,P):-
    is_prime(P),P<D,
    (   D mod P)=:= 0,!.

smallest_prime(D,N,P):-
    N<D,
    N1 is N+1,
    smallest_prime(D,N1,P).

bipolarDivisor(D,D):-
    is_prime(D),!.

bipolarDivisor(N,D):-
    smallest_prime(N,2,SP),
    N1 is N-1,
    greatest_prime(N,N1,GP),
    D is SP*GP.


count(s(0),R,R):-!.
count(s(A),C,R):-
    C1 is C+1,
    count(A,C1,R).

divide(D,s(0),D):-!.
divide(_,0,undefined):-!.
divide(0,_,0):-!.
divide(D,D,s(0)):-!.
divide(A,B,D):-
    count(A,1,C1),
    count(B,1,C2),
    C2<C1,
    C3 is C1//C2,
    count(D,1,C3),!;
    D is 0,!.
