CLASS zcl_calculadora DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .
  PUBLIC SECTION.

  METHODS:


*   2 get para consultar valor en pantalla y nombre propietario  y 1 set nombre propietario

        constructor IMPORTING i_valor  TYPE i i_nombre TYPE string,

            get_valor EXPORTING o_valor TYPE i,
            get_nombre EXPORTING o_nombre TYPE string,
            set_nombre IMPORTING i_nombre TYPE string,

             sumar IMPORTING i_valor TYPE i,
             restar IMPORTING i_valor TYPE i,
             multiplicar IMPORTING i_valor TYPE i,
             dividir
             IMPORTING i_valor TYPE i
             out     TYPE REF TO if_oo_adt_classrun_out,
             reset.




  PROTECTED SECTION.
  PRIVATE SECTION.

  DATA:
      valor TYPE i,
      nombre TYPE string.
ENDCLASS.



CLASS zcl_calculadora IMPLEMENTATION.


METHOD constructor.
  nombre = i_nombre.
  valor  = i_valor.
ENDMETHOD.


METHOD get_valor.
o_valor = valor.
ENDMETHOD.

METHOD get_nombre.
o_nombre = nombre.
ENDMETHOD.

METHOD set_nombre.
nombre = i_nombre.
ENDMETHOD.

METHOD sumar.
valor = valor + i_valor.
ENDMETHOD.

METHOD restar.
valor = valor - i_valor.

ENDMETHOD.

METHOD multiplicar.
valor = valor * i_valor.
ENDMETHOD.

METHOD dividir.
    IF i_valor <> 0.  "si el valor es difente a cero divide
      valor = valor / i_valor.
    ELSE.
      out->write( 'No se pudo dividir entre cero' ).
    ENDIF.
  ENDMETHOD.

METHOD reset.
valor = 0.
ENDMETHOD.



ENDCLASS.
