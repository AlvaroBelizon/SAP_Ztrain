*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations

CLASS zcl_demo_cuenta DEFINITION.
PUBLIC SECTION.

    DATA:
        nombre TYPE string,
        saldo  TYPE f.

        METHODS:
        constructor
        IMPORTING
          i_nombre TYPE string
          i_saldo  TYPE f,

      get_nombre
        EXPORTING
            o_nombre TYPE string,

      set_nombre
        IMPORTING
            i_nombre TYPE string,

      get_saldo
        EXPORTING
            o_saldo TYPE f ,


       ingresar
        IMPORTING i_cantidad TYPE f,

      retirar
        IMPORTING i_cantidad TYPE f,

      mostrar_estado
        IMPORTING
          io_out TYPE REF TO if_oo_adt_classrun_out.

 PROTECTED SECTION.
 PRIVATE SECTION.
 ENDCLASS.


 CLASS zcl_demo_cuenta IMPLEMENTATION.

  METHOD constructor.
    nombre = i_nombre.
    saldo  = i_saldo.
  ENDMETHOD.

  METHOD set_nombre.
    " atributo = parametro de entrada
    nombre = i_nombre.
  ENDMETHOD.

  METHOD get_nombre.
    " parametro de salida = atributo
    o_nombre = nombre.
  ENDMETHOD.


  METHOD get_saldo.
    " parametro de salida = atributo
    o_saldo = saldo.
  ENDMETHOD.

  METHOD ingresar.
    saldo = saldo + i_cantidad.
  ENDMETHOD.

  METHOD retirar.
    IF saldo >= i_cantidad.
      saldo = saldo - i_cantidad.
    ENDIF.
    ENDMETHOD.

    METHOD mostrar_estado.
    io_out->write( |Titular: { nombre }  | && |  Saldo: { saldo }| ).
  ENDMETHOD.
ENDCLASS.
