% ---------------------------------------------
% Base de conocimientos
% ---------------------------------------------

% Determinantes
det(det(X),f,sg) --> [X], {member(X, [la,una])}.
det(det(X),f,pl) --> [X], {member(X, [las,unas])}.
det(det(X),m,sg) --> [X], {member(X, [el,un])}.
det(det(X),m,pl) --> [X], {member(X, [los,unos])}.

% Verbos intransitivos
vi(vi(trabaja), sg) --> [trabaja].
vi(vi(trabajan), pl) --> [trabajan].

% Verbos transitivos
vt(vt(cobra), sg) --> [cobra].
vt(vt(cobran), pl) --> [cobran].

% Nombres
n(n(empleada),f,sg) --> [empleada].
n(n(empleadas),f,pl) --> [empleadas].
n(n(empleado),m,sg) --> [empleado].
n(n(empleados),m,pl) --> [empleados].
n(n(sueldo),m,sg) --> [sueldo].
n(n(sueldos),m,pl) --> [sueldos].

% ----------------------------------------
% Gramáticas
% ----------------------------------------

% Versión con árbol sintáctico
o(o(SN,SV)) --> sn(SN,Gen,Num), sv(SV,Num).

% Versión sin árbol (solo validación)
o --> sn(_,Gen,Num), sv(_,Num).

% Sintagma nominal: chequea género y número
sn(sn(DET,N),Gen,Num) --> det(DET,Gen,Num), n(N,Gen,Num).

% Sintagma verbal transitivo
sv(sv(VT,SN),Num) --> vt(VT,Num), sn(SN,_,Num).

% Sintagma verbal intransitivo
sv(sv(VI),Num) --> vi(VI,Num).



