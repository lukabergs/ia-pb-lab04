with Ada.Integer_Text_IO, Ada.Text_IO, Ada.Float_Text_IO; use Ada.Integer_Text_IO, Ada.Text_IO, Ada.Float_Text_IO;

package body Laboratorio04 is

   --AUTHOR: BERGARETXE LOPEZ, LUKA
   ------------------------------------------------------------
   --TAREA 1:
   ------------------------------------------------------------

   --------------------
   -- Contar_Digitos --
   --------------------

   function Contar_Digitos (Num : in Positive) return Natural is
      n : Natural := 0;
      k : Positive := 1;
   begin
      while (Num / k /= 0) loop
         k := k * 10;
         n := n + 1;
      end loop;
      return n;
   end Contar_Digitos;


   --------------------
   -- Contar_Digitos --
   --------------------

   procedure Contar_Digitos (Num : in Positive; digitos: out Natural) is
      k : Positive := 1;
   begin
      digitos := 0;
      while (Num / k /= 0) loop
         k := k * 10;
         digitos := digitos + 1;
      end loop;
   end Contar_Digitos;


   --------------
   -- Digito_I --
   --------------

   function Digito_I (Num, I: in Natural) return T_Digito is
      aux : T_Digito;
      N : Natural := 0;
   begin
      N := Num;
      while (N > 10**I) loop
         N := N / 10;
      end loop;
      aux := N mod 10;
      return aux;
   end Digito_I;


   --------------
   -- Digito_I --
   --------------

   procedure Digito_I (Num, I: in Natural; Dig_I: out T_Digito) is
   begin
      Dig_I := Num / 10**(I - 1) mod 10;
   end Digito_I;


   ----------------
   -- es_Capicua --
   ----------------

   function es_Capicua (Num: in Positive) return Boolean is
      aux : Boolean := TRUE;
      d1, d2 : T_Digito;
   begin
      for i in 1..Contar_Digitos(Num) loop
         digito_I(Num,i, d1);
         d2 := digito_I(Num,i);
         aux := aux and (d1 = d2);
         exit when aux = FALSE;
      end loop;
      return aux;
   end es_Capicua;


   -----------------------
   -- Contador_Capicuas --
   -----------------------

   procedure Contador_Capicuas (Num: out Natural) is
      n : Natural;
   begin
      Num := 0;
      loop
         Get(n);
         exit when n = 0;
         if (n rem 5 = 0 and es_Capicua(n)) then
            Num := Num + 1;
         end if;
      end loop;
   end Contador_Capicuas;


   --------------
   -- es_Omirp --
   --------------

   function Es_Primo(Num: in Positive) return Boolean is
      aux : Boolean := TRUE;
   begin
      for i in 2..Num - 1 loop
         aux := aux and Num rem i /= 0;
         exit when aux = FALSE;
      end loop;
      return aux;
   end Es_Primo;

   function Al_Reves(Num: in Positive) return Positive is
      aux : Natural := 0;
      k : Natural := 0;
   begin
      while Num / 10**k > 0 loop
         aux := aux * 10 + (Num / 10**k) rem 10;
         k := k + 1;
      end loop;
      return aux;
   end Al_Reves;

   function es_Omirp (Num: in Positive) return Boolean is
   begin
      return es_Primo(Num) and es_Primo(al_Reves(Num));
   end es_Omirp;


   ---------------
   -- pos_omirp --
   ---------------

   procedure pos_omirp (omirp_1,omirp_n : out Natural; Pos1, PosN: out Natural) is
      n : Integer;
      k : Natural := 0;
   begin
      omirp_1 := 0; omirp_n := 0; pos1 := 0; posN := 0;
      while not end_of_file loop
         get(n);
         k := k + 1;
         if es_Omirp(n) and omirp_1 = 0 then
            omirp_1 := n;
            Pos1 := k;
            omirp_n := omirp_1;
            posN := pos1;
         elsif es_Omirp(n) then
            omirp_n := n;
            PosN := k;
         end if;
      end loop;
   end pos_omirp;


   ---------------
   -- es_odioso --
   ---------------

   function es_odioso (Num: in Positive) return Boolean is
      c : Natural;
      odioso : Boolean := FALSE;
   begin
      c := Num;
      while c > 0 loop
         odioso := odioso xor (c rem 2 = 1);
         c := c / 2;
      end loop;
      return odioso;
   end es_odioso;


   -----------------------
   -- secuencia_odiosos --
   -----------------------

   procedure secuencia_odiosos (suma_odiosa: out Boolean) is
      k, s : Natural := 0;
      n : Natural;
   begin
      loop
         get(n);
         exit when k > 4 or n = 0;
         if n rem 2 /= 0 and es_odioso(n) then
            s := s + n;
            k := k + 1;
         end if;
      end loop;
      if s /= 0 and then es_odioso(s) then
         suma_odiosa := TRUE;
      else
         suma_odiosa := FALSE;
      end if;
   end secuencia_odiosos;


   ------------------------------------------------------------
   --TAREA 2:
   ------------------------------------------------------------

   ------------------
   -- control_ISBN --
   ------------------

   function control_ISBN (num:In Integer) return character is
      suma : Natural := 0;
      d : Natural;
      c : Character;
   begin
      if num /= 0 then
         for i in reverse (10 - contar_digitos (abs(num)))..9 loop
            Digito_I(abs(num), 10 - i, d);
            suma := suma + d * i;
         end loop;
         if suma rem 11 = 10 then
            c := 'X';
         else
            c := Character'Val(suma rem 11 + 48);
         end if;
      else
         c := '0';
      end if;
      return c;
   end control_ISBN;


   ----------------
   -- es_collatz --
   ----------------

   procedure es_collatz (resultado: out Boolean) is
      n, anterior : Natural;
   begin
      get(n);
      if n = 0 then
         resultado := FALSE;
      elsif n = 1 then
         resultado := TRUE;
      else
         resultado := TRUE;
         loop
            anterior := n;
            get(n);
            exit when n = 0 or resultado = FALSE;
            if anterior rem 2 = 0 then
               resultado := resultado and anterior = 2 * n;
            else
               resultado := resultado and n = 3 * anterior + 1;
            end if;
         end loop;
         if anterior = 1 then
            resultado := resultado and TRUE;
         else
            resultado := FALSE;
         end if;
      end if;
   end es_collatz;


   -------------------
   -- Area_Poligono --
   -------------------

   procedure Area_Poligono (Area_Total: out Float) is
      x0, y0, x1, y1, x2, y2 : Float;
      k : Natural := 0;
      s : float := 0.0;
   begin
      get (x0); get (y0);
      x1 := x0; y1 := y0;
      loop
         get (x2); get (y2);
         s := s + (x1*y2 - x2*y1);
         k := k + 1;
         exit when x2 = x0 and y2 = y0 and k > 2;
         x1 := x2; y1 := y2;
      end loop;
      Area_Total := 0.5 * abs(s);
   end Area_Poligono;


   ------------------------
   -- Iteracion_Kaprekar --
   ------------------------
   procedure Ordenar(D1,D2,D3,D4: in out T_Digito) is
      aux : T_Digito;
   begin
      loop
         if D3 > D4 then
            aux := D4;
            D4 := D3;
            D3 := aux;
         end if;
         if D2 > D3 then
            aux := D3;
            D3 := D2;
            D2 := aux;
         end if;
         if D1 > D2 then
            aux := D2;
            D2 := D1;
            D1 := aux;
         end if;
         exit when D4 >= D3 and D3 >= D2 and D2 >= D1;
      end loop;
   end Ordenar;

   procedure Iteracion_Kaprekar (Num: in Natural; Resultado: out Natural) is
      D1, D2, D3, D4 : T_Digito;
   begin
      Digito_I (Num, 1, D1);
      Digito_I (Num, 2, D2);
      Digito_I (Num, 3, D3);
      Digito_I (Num, 4, D4);
      Ordenar(D1, D2, D3, D4);
      Resultado := (1000*D4 + 100*D3 + 10*D2 + D1) - (1000*D1 + 100*D2 + 10*D3 + D4);
   end Iteracion_Kaprekar;


   ----------------------
   -- Lleva_A_Kaprekar --
   ----------------------

   procedure Lleva_A_Kaprekar
     (Num: in Natural;
      Lleva: out Boolean;
      Pasos: out Natural)
   is
      r : Natural := Num;
   begin
      Pasos := 0;
      while Pasos < 100 and r /= 6174 loop
         Iteracion_Kaprekar(r, r);
         Pasos := Pasos + 1;
      end loop;
      if r = 6174 then
         Lleva := TRUE;
      else
         Lleva := FALSE;
      end if;
   end Lleva_A_Kaprekar;



   ------------------------------------------------------------
   --TAREA 3:
   ------------------------------------------------------------

   --------------
   -- Producto --
   --------------

   function Producto (X,N: in Natural) return Natural is
      r : Natural;
   begin
      if N /= 0 then
         r := X + Producto(X, N - 1);
      else
         r := 0;
      end if;
      return r;
   end Producto;

   ---------------
   -- Fibonacci --
   ---------------

   function Fibonacci (N: in Natural) return Natural is
      r : Natural;
   begin
      if N = 0 then
         r := 0;
      elsif N = 1 then
         r := 1;
      else
         r := Fibonacci (N - 1) + Fibonacci (N - 2);
      end if;
      return r;
   end Fibonacci;

   ---------------
   -- Factorial --
   ---------------

   function Factorial (N: in Natural) return Natural is
      r : Natural;
   begin
      if N = 0 or N = 1 then
         r := 1;
      else
         r := N * Factorial(N - 1);
      end if;
      return r;
   end Factorial;

   ---------------
   -- Ackermann --
   ---------------

   function Ackermann (M,N: in Natural) return Natural is
      r : Natural;
   begin
      if M = 0 then
         r := N + 1;
      elsif N = 0 then
         r := Ackermann (M - 1, 1);
      else
         r := Ackermann (M - 1, Ackermann (M, N - 1));
      end if;
      return r;
   end Ackermann;

   -------------
   -- Hermite --
   -------------

   function Hermite (N: in Natural; X:in Float) return Float is
      r : Float;
   begin
      if N = 0 then
         r := 1.0;
      elsif N = 1 then
         r := 2.0 * X;
      else
         r := 2.0 * X * Hermite(N - 1, X) - 2.0 * Float(N - 1) * Hermite(N - 2, X);
      end if;
      return r;
   end Hermite;

   -------------
   -- Binario --
   -------------

   function Binario (N: in Natural) return String is
   begin
      if N = 0 then
         return "0";
      elsif N = 1 then
         return "1";
      else
         return Binario (N / 2) & character'val(N rem 2 + 48);
      end if;
   end Binario;

end Laboratorio04;
