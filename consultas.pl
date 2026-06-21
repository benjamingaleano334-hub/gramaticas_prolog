% Consultas de validación (true/false)
?- phrase(o, [el, empleado, trabaja, un, sueldo]).
?- phrase(o, [el, empleade, trabaja, una, empleada]).
?- phrase(o, [el, empleada, trabaja]).
?- phrase(o, [los, empleada, cobran, sueldos]).
?- phrase(o, [los, empleados, cobran, sueldos]).
?- phrase(o, [los, empleados, cobran, los, sueldos]).


% Consultas con árbol sintáctico
?- phrase(o(A), [los, empleados, cobran, los, sueldos]).
?- phrase(o(A), [los, empleados, trabajan, los, sueldos]).
