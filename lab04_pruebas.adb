with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

--with Lab04_Sol; use Lab04_Sol;
with Laboratorio04; use Laboratorio04;
procedure Lab04_Pruebas is
   digito : t_digito;
   numero ,posicion : Natural;
   numero2,posicion2: Natural;
   Lo_Es: Boolean;
   el_area: Float;

   N : Natural;
begin

--   Put_Line("CONTAR_DIGITOS - Funcion");
--   numero := contar_digitos(846753211); --debe ser 9
--   put(numero);
--   numero := contar_digitos(846753);    --debe ser 6
--   put(numero);
--   New_Line(3);


--   Put_Line("CONTAR_DIGITOS - Procedimiento");
--   contar_digitos(846753211, numero);   --debe ser 9
--   put(numero);
--   contar_digitos(846753, numero);      --debe ser 6
--   put(numero);
--   New_Line(3);


   Put_Line("DIGITO_I - Funcion");
   digito := digito_I(846753211,1);     -- debe ser 8
   Put(digito);
   digito := digito_I(846753,3);        -- debe ser 6
   Put(digito);
   New_Line(3);
	--poner más casos para probar la función digito_i y asegurar que funciona


   Put_Line("DIGITO_I - Procedimiento");
   digito_I(846753211,1, digito);       -- debe ser 1
   Put(digito);
   digito_I(846753,3, digito);          -- debe ser 7
   Put(digito);
   digito_I(4563,6, digito);            -- debe ser 0
   Put(digito);
   New_Line(3);


--   Put_Line("ES_CAPICUA");
--   Lo_Es := Es_Capicua(123);            --No es capicua
--   Put(Lo_Es'Img);New_Line;
--   Lo_Es := Es_Capicua(1230321);        --Si es capicua
--   Put(Lo_Es'Img);New_Line;


--   Put_Line("CONTADOR_DE_CAPICUAS - Introduce enteros terminados en 0");
--   Put_line("Probar con: 1 5 10 15 20 25 525 5 0 --> 3");
--   Contador_Capicuas(Numero);
--   Put(Numero); New_Line;
--   Put_line("Probar con: 100 50 25 10 20 25 625 9 0 --> 0");
--   Contador_Capicuas(Numero);
--   Put(Numero); New_Line(3);


--   Put_Line("OMIRP");
--   lo_es := es_Omirp(1597);--si
--   Put(Lo_Es'Img);New_Line;
--   lo_es := es_Omirp(17); --No
--   Put(Lo_Es'Img);
--   New_Line(3);


--   Put_Line("POSICION OMIRP - Introduce enteros terminados en 0");
--   Put_line("Probar con: 12 15 21 25 13 --> 13 (5) y 13 (5)");
--   Pos_Omirp(Omirp_1=>Numero, Pos1=>Posicion,
--             omirp_N=>numero2,PosN=> posicion2);
--   Put(Numero); Put(Posicion);
--   Put(Numero2);Put(Posicion2);New_Line;
--   Put_line("Probar con: 31 7951 --> 31 (1) y 7951 (2)");
--   Pos_Omirp(Omirp_1=>Numero, Pos1=>Posicion,
--             omirp_N=>numero2,PosN=> posicion2);
--   Put(Numero); Put(Posicion);
--   Put(Numero2);Put(Posicion2);New_Line(3);
--   Put_Line("Probar con: 4 6 8 12 13 15 19 13 --> 13 (5) 13 (8)");
--   Pos_Omirp(Omirp_1=>Numero, Pos1=>Posicion,
--             omirp_N=>numero2,PosN=> posicion2);
--   Put(Numero); Put(Posicion);
--   Put(Numero2);Put(Posicion2);New_Line(3);


--   Put_Line("ES_ODIOSO");
--   lo_es := es_odioso(13); --si
--   Put(Lo_Es'Img);New_Line;
--   lo_es := es_Odioso(3);  --no
--   Put(Lo_Es'Img);
--   New_Line(3);


--   Put_Line("SECUENCIA ODIOSOS - Introduce enteros terminados en 0");
--   Put_line("Probar con: 12 *21 *25 *31 356 *7 2 5 *13 0 --> TRUE (97)");
--   Secuencia_odiosos (lo_es);
--   Put(lo_es'img); New_Line;
--   Put_line("Probar con: 13 7 0 --> FALSE (20)");
--   Secuencia_odiosos (lo_es);
--   Put(lo_es'img); New_Line(3);
--   Put_line("Probar con: 12 21  4 31 356 7 13 2 15 4 11 25 7 0 --> FALSE");
--   Secuencia_odiosos (lo_es);
--   Put(lo_es'img); New_Line(3);



--   Put_Line("Codigo de Control de ISBN de 000000000-0 y sale ");
--   Put(control_ISBN(000000000));
--   New_Line;

--   Put_Line("Codigo de Control de ISBN de -030640615-2 y sale ");
--   Put(control_ISBN(-030640615));
--   New_Line;

--   Put_Line("Codigo de Control de ISBN de 999215810-7 y sale ");
--   Put(control_ISBN(999215810));
--   New_Line;

--   Put_Line("Codigo de Control de ISBN de 080442957-X y sale ");
--   Put(control_ISBN(080442957));
--   New_Line;

--   Put_Line("Codigo de Control de ISBN de 960425059-0 y sale ");
--   Put(control_ISBN(960425059));
--   New_Line;

--   Put_Line("Codigo de Control de ISBN de 853590277-5 y sale ");
--   Put(control_ISBN(853590277));
--   New_Line;

--   Put_Line("Codigo de Control de ISBN de 184356028-3 y sale ");
--   Put(control_ISBN(184356028));
--   New_Line;

--   Put_Line("Codigo de Control de ISBN de 068484328-5 y sale ");
--   Put(control_ISBN(068484328));
--   New_Line;

--   Put_Line("Codigo de Control de ISBN de 938695421-4 y sale ");
--   Put(control_ISBN(938695421));
--   New_Line;


--   Put_Line("ES_COLLATZ - Introduce enteros terminados en 0");
--   --probar con 18 9 28 14 7 22 11 34 17 52 26 13 40 20 10 5 16 8 4 2 1 0
--   Put_Line("18 9 28 14 7 22 11 34 17 52 26 13 40 20 10 5 16 8 4 2 1 0");
--   es_collatz(lo_es);
--   Put(lo_es'img);
--   New_Line(3);


--   Put_Line("AREA - Introduce enteros terminados en coordenada inicial");
--   --probar con 1.0 2.0 3.0 0.0 3.0 5.0 0.0 5.0 1.0 2.0
--   Put_Line("1.0 2.0 3.0 0.0 3.0 5.0 0.0 5.0 1.0 2.0 ->9.50");
--   area_poligono(el_area);
--   Put(el_area'img); New_Line;
--   New_Line;
--   Put_Line("0.0 0.0 3.5 0.0 3.5 3.5 0.0 3.5 0.0 0.0 ->12.25");
--   Area_Poligono(El_Area);
--   Put(el_area'img);
--   New_Line(3);


--   Put_Line("ITERACION_KAPREKAR");
--   Iteracion_kaprekar(2535,numero);
--   put(numero);
--   Iteracion_kaprekar(numero, numero);
--   put(numero);
--   New_Line(3);


--   Put_Line("LLEVA A KAPREKAR");
--   Put_Line("probar con: 0016->6084->8172->7443->3996->6264->4176->6174 => TRUE (7)");
--   Lleva_A_Kaprekar (0016,lo_es,numero);
--   Put(lo_es'img); Put(numero);New_Line;
--   Put_Line("probar con: 1111->0000->0000->0000->....->0000->0000->0000 => FALSE(100)");
--   Lleva_A_Kaprekar (1111,lo_es,numero);
--   Put(lo_es'img); Put(numero);New_Line;
--   New_Line(3);

   get(N);

   for i in 0..N loop
      Put(Binario(i)); New_Line;
   end loop;


end Lab04_Pruebas;

