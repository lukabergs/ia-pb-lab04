package Laboratorio04 is

   subtype T_Digito is Natural range 0..9;

   --TAREA 1:
   ------------------------------------------------------------
   function Contar_Digitos (Num : in Positive) return Natural;
   -- post: resultado es el numero de di­gitos de Num
   procedure Contar_Digitos (Num : in Positive; digitos: out Natural);
   -- post: digitos contiene el numero de di­gitos de Num

   function Digito_I (Num, I: in Natural) return T_Digito;
   --pre: 1 <= I <= 9
   --post: resultado es el I-esimo digito de Num (comenzando por izda)

   procedure Digito_I (Num, I: in Natural; Dig_I: out T_Digito);
   --pre: 1 <= I <= 9
   --post: resultado es el I-esimo digito de Num (comenzando por dcha)

   function es_Capicua (Num: in Positive) return Boolean;
   --post: resultado = true <--> Num es Capicua

   procedure Contador_Capicuas (Num: out Natural);
   --Entrada Estándar: Secuencia de positivos terminada en 0
   --Post: Num = Numero de capicuas multiplos de cinco en la secuencia

   function es_Omirp (Num: in Positive) return Boolean;
   --post: resultado = true <--> Num es Omirp

   procedure pos_omirp (omirp_1,omirp_n:out Natural; Pos1,PosN: out Natural);
   --Entrada: una secuencia de positivos SIN CENTINELA
   --Post: omirp_1 contiene el primer omirp de la secuencia
   --      omirp_n contiene el último omirp de la secuencia
   --      Pos1 es la posicion en la secuencia del primer omirp
   --      PosN es la posicion en la secuencia del ultimo omirp

   function es_odioso (Num: in Positive) return Boolean;
   --post: resultado = true <--> Num es odioso

   procedure secuencia_odiosos (suma_odiosa: out Boolean);
   --E Estandar: una secuencia de positivos
   --Pre: la secuencia termina en 0
   --Post: suma_odiosa = true <--> la suma de los 5 primeros impares
   --                              odiosos es un numero odioso

   --TAREA 2:
   ------------------------------------------------------------
   function control_ISBN(num:In Integer) return character;
   --pre: num es un entero de 9 dÃ­gitos
   --post: resultado es el dÃ­gito de control de un ISBN con ese valor
   --Es el mismo programa cambia el formato de entrada de los datos

   procedure es_collatz(resultado: out Boolean);
   --E Estandar: una secuencia de positivos terminada en -1
   --Post: Es_collatz = true <--> los positivos de la entrada son
   --      una secuencia de collatz (sin contar el -1).

   procedure Area_Poligono(Area_Total: out Float);
   --E Estandar: una secuencia de reales positivos terminada en la coordenada inicial
   --Pre: La secuencia tiene al menos 3 puntos (triangulo)
   --     El ultimo punto coincide con el primero

   procedure Iteracion_Kaprekar (Num: in Natural; Resultado: out Natural);
   --Pre: Num tiene cuatro cifras
   --Post: Resultado

   procedure Lleva_A_Kaprekar(Num: in Natural;
                       Lleva: out Boolean; Pasos: out Natural);
   --post: Lleva es true <--> Num lleva a la constante de kaprekar en 100 o menos de 100 iteraciones
   --      Pasos es el numero de iteraciones que se tarda en llegar o 0 si no se llega en 100

   --TAREA 3:
   ------------------------------------------------------------
   function Producto(X,N: in Natural) return Natural;
   --post: Resultado = X*N

   function Fibonacci(N: in Natural) return Natural;
   --Post: Resultado = Fib(N)

   function Factorial(N: in Natural) return Natural;
   --Post: Resultado = Factorial(N)

   function Ackermann(M,N: in Natural) return Natural;
   --Post: Resultado = Ackermann(N,M)

   function Hermite(N: in Natural;X:in Float) return Float;
   --Post: Resultado = Hermite(N,X)

   function Binario(N: in Natural) return String;
   --Post: Resultado = Representacion en Binario de N
end Laboratorio04;

