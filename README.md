# LABORATORIO 04
## Instrucciones iterativas y tratamiento de secuencias
### TAREA 1. Ejercicios obligatorios
1. **Contar dígitos I.** Implementa una _función_ llamada contar_digitos que, dado un positivo de máximo 9 cifras, devuelve un Natural indicando cuántas son las cifras que lo constituyen. Así, para un numero como 84567958 debe devolver 8.
2. **Contar dígitos II.** Implementa el _procedimiento_ contar_digitos que, dado un positivo de máximo 9 cifras, devuelve un Natural indicando cuántas son las cifras que lo constituyen. Así, para el número 000009 el resultado debe ser 1.
3. **Dígito iésimo I.** Implementa una _función_ llamada digito_I que, dado un número de máximo 9 cifras, devuelva la cifra i-ésima empezando a contar por la izquierda. Así Para 846753211 y 1 la función debe devolver 8; y para 846753 y 3 debe devolver 6.
4. **Dígito iésimo II.** Implementa un _procedimiento_ llamado digito_I que, dado un número de máximo 9 cifras, devuelva la cifra i-ésima empezando a contar por la derecha. Así Para 846753211 y 1 el procedimiento debe devolver 1; y para 846753 y 3 debe devolver 7.
5. **Números capicúas.** Implementa una _función_ llamada es_capicua que, dado un número entero positivo, indique si es capicúa. Usa las funciones contar_digitos, y digito_i, y el procedimiento digito_i.
6. **Contador de capicúas múltiplos de cinco.** Implementa el _procedimiento_ contador_capicuas que lee del teclado una secuencia de números positivos _**terminada en 0**_ y devuelve cuántos de esos números son capicúas múltiplos de cinco. No se consideran los ceros a la izquierda del número, por lo que el 10 no se considera capicúa (aunque podría considerarse que 10 es también 010). Utiliza la función es_capicua para resolverlo.
7. **Números Omirp.** Un número primo es aquel que solo es divisible por 1 y por él mismo. Un número omirp es un número primo que, al invertir sus dígitos también es un número primo. Por ejemplo, el 13 y el 1597 son omirp, ya que son primos y también lo son sus inversos: el 31 y el 7951. Implementa una _función_ en Ada llamada **es_Omirp** que, dado un número entero positivo indique si es omirp. Usa la función contar_digitos, y el procedimiento digito_i.
8. **Posiciones de numeros Omirp.** Implementa un _programa_ llamado **Pos_Omirp** que, lea una secuencia de números enteros _**sin centinela**_ del teclado, devuelva el primer número y el último número omirp y sus posiciones en la secuencia. Utiliza la función es_omirp para comprobar la condición. Considera que la secuencia podría ser vacía o no tener ningún valor omirp. En tal caso, los valores que se devuelven son ceros (tanto en los valores del número como en las posiciones) Si no hubiese ninguno, los valores que devuelve son dos ceros.
9. **Números odiosos.** Los números odiosos son aquellos que, en su representación binaria, tienen un número impar de unos. Implementa una _función_ llamado **es_odioso** que devuelva si un número dado es odioso. Recuerda que para obtener la representación binaria de un número decimal se toman los restos de las sucesivas divisiones entre 2 del número original. El último resto es el bit más significativo (el de la izda) y el primero es el menos significativo (el de la dcha) del número binario.
10. **Cinco primeros odiosos.** Implementa un _subprograma_ llamado **secuencia_odiosos** que, lea del teclado una secuencia de números positivos _**terminada en 0**_ e indique si la suma de los cinco primeros números _**impares odiosos**_ de la secuencia también es un número odioso. Si la secuencia tiene menos de 5 números impares odiosos, entonces se toman todos los números impares odiosos encontrados en la secuencia. Si no hubiera ninguno, la suma es 0. En la implementación se debe utilizar el subprograma es_odioso. Por ejemplo, si la secuencia en el teclado es <12, 21, 25, 31, 356, 7, 2, 5, 13, 0> (destacados en negrita los números impares odiosos) indicará que es TRUE ya que 21+25+31+7+13 = 97, que tiene un número impar de unos. Si la secuencia de entrada es <13, 7, 0> indicará que es FALSE ya que 20 tiene un número par de unos. Si la secuencia de entrada es <12, 21, 4, 31, 356, 7, 13, 2, 15, 4, 11, 25, 7, 0> indicará que es FALSE ya que 21+31+7+13+11 = 83, que tiene un número par de unos. Nótese que solo se han recogido los 5 primeros números odiosos ignorando todos los demás.
### TAREA 2. Ejercicios extra
11. **Dígito de control de número ISBN.** El dígito de control de un ISBN se obtiene de la siguiente forma: cada una de las cifras de N, de izquierda a derecha, se multiplican por 1, 2, 3, 4, 5, 6, 7, 8, 9, y se suman estos resultados. La suma se divide entre 11 y el resto de la división es el dígito de control. En caso de que dicho resto fuera 10, el dígito de control es la letra X. Crea la función Control_ISBN que, dado un número entero positivo N de 9 cifras (que corresponde al ISBN de un libro), calcula el dígito de control asociado a N. Como el resultado pueden ser 11 valores, en lugar de devolver valores de tipo entero (que no permitirían el valor ‘X’) se devuelve un carácter (los dígitos y la X).
_**Ejemplo:**_ Si N = 842053211 el dígito de control es 8 porque (1·8+2·4+3·2+4·0+5·5+6·3+7·2+8·1+9·1) rem 11 = 8.
12. **Secuencia de Collatz.** Implementa un _procedimiento_ llamado **es_collatz** que compruebe si la secuencia escrita en el teclado (terminado en 0) se corresponde con la secuencia de Collatz (ver descripción en el enunciado del lab03).
13. **Área de un polígono irregular.** Implementa un _procedimiento_ llamado **área_poligono** que lea del teclado una secuencia ordenada de coordenadas de los vértices (xi, yi) de un polígono cerrado, en la que _**la coordenada última (la n) coincide con la primera (la 1)**_. Existe una fórmula simple para llegar al resultado (aunque la explicación de por qué no lo es tanto):
    ```math
      𝐴𝑟𝑒𝑎 = \frac{1}{2} \left| \sum_{i=1}^{n-1} (𝑥_i𝑦_{i+1} - 𝑥_{i+1}𝑦_i) \right|
    ```
14. **Iteración Kaprekar.** Implementa una _función_ llamada **Iteración_Kaprekar** que dado un número de cuatro cifras (si es menos, se rellena con ceros a la izquierda) realiza las siguientes operaciones: (1) ordena las cifras de menor a mayor formando una cifra; (2) ordena las cifras de mayor a menor formando una segunda cifra; (3) resta el número menor al mayor. Ese es el resultado de la iteración. Por ejemplo, de 4532 se obtiene 3087 (5432-2345); o de 3087 se obtiene 8352 (=8730-0378). Los algoritmos de ordenación los veremos más adelante. Así que, para ordenar los cuatro dígitos, no busques algoritmos de ordenación. Hazlo comprobando todos los casos: deja en D1 el menor de todos los dígitos; luego deja en D2 el mayor de los restantes dígitos; y finalmente en D3 el siguiente menor y el último dígito será el mayor de todos.
15. **¿Lleva a Kaprekar?** Implementa un _procedimiento_ llamado **lleva_a_kaprekar** que, dado un número, devuelva si, a partir de ese número, se obtiene la constante de Kaprekar (6174) en menos de 100 iteraciones de Kaprekar. El resultado debe ser un booleano diciendo si se llega a la constante y en cuantas iteraciones. Utiliza la función Iteración_kaprekar en la resolución.
### TAREA 3. Ejercicios para pensar
La recursividad consiste en definir una función en función de un caso más sencillo de la misma función llamado relación de recurrencia. Las funciones recursivas cuentan con una o más relaciones de recurrencia y al menos un caso trivial que dan un valor final a la función.
16. **Producto recursivo.** Define la _función_ **Producto** aplicado a dos operandos naturales, de acuerdo con la siguiente descripción de la función:

  ```math
    𝑃𝑟𝑜𝑑𝑢𝑐𝑡𝑜(𝑥, 𝑛) =
    \begin{cases}
      0 & 𝑛 = 0 \\ 𝑥 + 𝑃𝑟𝑜𝑑𝑢𝑐𝑡𝑜(𝑥, 𝑛 - 1) & 𝑛 \geq 1
    \end{cases}
  ```

17. **Fibonacci recursiva.** Define la _función_ **Fib**, que calcula los números de la secuencia de Fibonacci, que se define con la siguiente fórmula. Utiliza llamadas a la propia función.
  ```math
    𝐹𝑖𝑏(𝑛) =
    \begin{cases}
      1 & 𝑛 = 0 \\ 1 & 𝑛 = 1 \\ 𝐹𝑖𝑏(𝑛 - 1) + 𝐹𝑖𝑏(𝑛 - 2) & 𝑛 ≥ 2
    \end{cases}
  ```
18. **Factorial recursiva.** Define la _función_ **Factorial**, que se define con la siguiente fórmula. Utiliza llamadas a la propia función (llamadas recursivas).
  ```math
    𝑛! =
    \begin{cases}
      1 & 𝑛 = 0 \\ 𝑛 \cdot (𝑛 - 1)! & 𝑛 ≥ 1
    \end{cases}
  ```
19. **Función de Ackermann.** Define la _función_ de **Ackermann** de manera recursiva sabiendo que su fórmula de recurrencia es la siguiente:
  ```math
    𝐴𝑐𝑘𝑒𝑟𝑚𝑎𝑛𝑛(𝑚, 𝑛) = \begin{cases}
      𝑛 + 1 & 𝑚 = 0 \\ 𝐴𝑐𝑘𝑒𝑟𝑚𝑎𝑛𝑛(𝑚 - 1, 1) & 𝑛 = 0 \\ 𝐴𝑐𝑘𝑒𝑟𝑚𝑎𝑛𝑛(𝑚 - 1, 𝐴𝑐𝑘𝑒𝑟𝑚𝑎𝑛𝑛(𝑚, 𝑛 - 1)) & 𝑚 \neq 0 \text{ and } 𝑛 \neq 0
    \end{cases}
  ```
20. **Polinomios de Hermite.** Los polinomios de Hermite se describe en forma de la siguiente fórmula. Crea una _función_ que, dado el orden de un polinomio de Hermite (la n) y un valor real (la x), devuelva el resultado del polinomio de Hermite de orden n de x.
    ```math
      𝐻𝑛(𝑥) = \begin{cases}
        1 & 𝑛 = 0 \\ 2𝑥 & 𝑛 = 1 \\ 2𝑥 \cdot 𝐻_{𝑛-1}(𝑥) - 2(𝑛 - 1)𝐻_{𝑛-2}(𝑥) & 𝑛 \geq 2
      \end{cases}
    ```
    Los polinomios de orden 0 a 5 son:
    ```math
      \begin{align*}
        𝐻_0(𝑥) &= 1 \\
        𝐻_1(𝑥) &= 2𝑥 \\
        𝐻_2(𝑥) &= 4𝑥^2 - 2 \\
        𝐻_3(𝑥) &= 8𝑥^3 - 12𝑥 \\
        𝐻_4(𝑥) &= 16𝑥^4 - 48𝑥^2 + 12 \\
        𝐻_5(𝑥) &= 32𝑥^5 - 160𝑥^3 + 120𝑥 \\
      \end{align*}
    ```
21. **Numero Binario.** Define una _función_ recursiva que transforme un numero decimal en un número binario. Necesitarás definir qué se hace para conseguir un dígito binario y dejar el resto como si fuera a ser resuelto por la propia operación de traducir a binario. También necesitarás definir un caso trivial, que decida que ya no hace falta volver a traducir el número decimal porque se ha terminado.
