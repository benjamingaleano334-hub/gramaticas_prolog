

# Gramáticas de cláusulas definidas en Prolog

Este proyecto corresponde a una práctica de **Gramáticas de Cláusulas Definidas (DCG)** en **Prolog**, aplicada al modelado de frases simples en español.  
El objetivo es representar oraciones con sustantivos, determinantes y verbos, validando **género y número**, y construyendo árboles sintácticos.

---

## 📌 Contenido del repositorio

- **`practica_gramaticas.pl`**  
  Archivo principal con la gramática y la base de conocimiento.  
  Incluye:
  - Determinantes (género y número).
  - Sustantivos (empleado/a, sueldo/s).
  - Verbos transitivos e intransitivos (trabaja/n, cobra/n).
  - Reglas para sintagmas nominales y verbales.
  - Dos versiones de la regla `o`:
    - `o --> ...` para validar frases (true/false).
    - `o(Tree) --> ...` para obtener el árbol sintáctico.

- **`consultas.pl`**  
  Archivo con ejemplos de consultas para probar la gramática.

---

## 🚀 Cómo usar

1. Abrir **SWI-Prolog**.
2. Cargar la gramática:
   ```prolog
   ?- [practica_gramaticas].
   ```
3. Cargar las consultas:
   ```prolog
   ?- [consultas].
   ```

---

## 📖 Ejemplos de consultas

### Validación simple (true/false)
```prolog
?- phrase(o, [la, empleada, trabaja]).
true.

?- phrase(o, [el, empleada, trabaja]).
false.

?- phrase(o, [el, empleado, trabaja, un, sueldo]).
false.
```

### Árbol sintáctico
```prolog
?- phrase(o(Tree), [los, empleados, cobran, los, sueldos]).
Tree = o(sn(det(los), n(empleados)),
         sv(vt(cobran), sn(det(los), n(sueldos)))).
```

---

## ✅ Qué hice

- Definí una **base de conocimiento** con determinantes, sustantivos y verbos.  
- Implementé reglas de **gramática DCG** para construir oraciones simples.  
- Validé que las frases respeten **género y número**.  
- Probé consultas que devuelven `true/false` y consultas que generan el **árbol sintáctico**.  
- Organicé todo en dos archivos (`practica_gramaticas.pl` y `consultas.pl`) más este README para que sea fácil de usar y reproducir.



---

👉 Con este README tu repo queda claro, profesional y fácil de usar.
