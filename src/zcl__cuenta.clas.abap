CLASS zcl__cuenta DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .


  PRIVATE SECTION.
ENDCLASS.



CLASS zcl__cuenta IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

DATA(lo_cuenta) = NEW zcl_demo_cuenta(
i_nombre = ' Carlos'
i_saldo  = 1000 ).



lo_cuenta->mostrar_estado( out ).

out->write( |Ingreso de  { 500 } | ).
lo_cuenta->ingresar( 500 ).

lo_cuenta->mostrar_estado( out ).

out->write( |Retirada de  { 200 } | ).
lo_cuenta->retirar( 200 ).

lo_cuenta->mostrar_estado( out ).

out->write( |Retirada de  { 2000 } | ).
lo_cuenta->retirar( 2000 ).

lo_cuenta->mostrar_estado( out ).


  ENDMETHOD.
ENDCLASS.


