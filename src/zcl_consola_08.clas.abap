CLASS zcl_consola_08 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun .

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_consola_08 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

*    DATA lo_bombilla TYPE REF TO zcl_bombilla_00.
*
*    DATA(lo_bombilla) = NEW zcl_bombillaa( 'Salón' ).
*    DATA(lo_bombilla2) = NEW zcl_bombillaa( 'Cocina' ).
*
*    DATA lv_ubicacion TYPE string.
*    DATA lv_estado    TYPE abap_bool.
*    DATA lv_texto     TYPE string.
*
*    lo_bombilla->get_ubicacion( IMPORTING o_ubicacion = lv_ubicacion ).
*    lo_bombilla->get_estado( IMPORTING o_estado = lv_estado ).
*
*    IF lv_estado = abap_true.
*      lv_texto = 'Encendida'.
*    ELSE.
*      lv_texto = 'Apagada'.
*    ENDIF.
*
*    out->write( |Ubicación: { lv_ubicacion }  | &&
*                |  Estado: { lv_texto }| ).
*
*    lo_bombilla->encender( ).
*
*    lo_bombilla->get_estado( IMPORTING o_estado = lv_estado ).
*
*    IF lv_estado = abap_true.
*      lv_texto = 'Encendida'.
*    ELSE.
*      lv_texto = 'Apagada'.
*    ENDIF.
*
*    out->write( |Ubicación: { lv_ubicacion }  | &&
*                |  Estado: { lv_texto }| ).
**
*    lo_bombilla->encender( ).
*
*    lo_bombilla->get_estado( IMPORTING o_estado = lv_estado ).
*
*    IF lv_estado = abap_true.
*      lv_texto = 'Encendida'.
*    ELSE.
*      lv_texto = 'Apagada'.
*    ENDIF.
*
*    out->write( |Ubicación: { lv_ubicacion }  | &&
*                |  Estado: { lv_texto }| ).
*
*    lo_bombilla->apagar( ).
*
*    lo_bombilla->get_estado( IMPORTING o_estado = lv_estado ).
*
*    IF lv_estado = abap_true.
*      lv_texto = 'Encendida'.
*    ELSE.
*      lv_texto = 'Apagada'.
*    ENDIF.
*
*    out->write( |Ubicación: { lv_ubicacion }  | &&
*                |  Estado: { lv_texto }| ).
*********************************************************************

*DATA(lo_cuadro1) = NEW zcl_cuadro_08(
* i_titulo = 'La maja desnuda'
* i_anyo = 1800 ).
*
*DATA lv_ficha TYPE string.
*lo_cuadro1->mostrar_ficha( IMPORTING o_ficha = lv_ficha ).
*out->write( lv_ficha ).
*
*lo_cuadro1->set_anyo( 1801 ).
*lo_cuadro1->mostrar_ficha( IMPORTING o_ficha = lv_ficha ).
*out->write( lv_ficha ).
*
*data(lv_boolen) = lo_cuadro1->esta_expuesto( ).
***********************************************************************


  DATA(lo_calculadora) = NEW zcl_calculadora(
    i_valor  = 0
    i_nombre = 'Manolo'
  ).

  DATA lv_valor TYPE i.
  DATA lv_nombre TYPE string.


 " Estado inicial
lo_calculadora->get_valor( IMPORTING o_valor = lv_valor ).
lo_calculadora->get_nombre( IMPORTING o_nombre = lv_nombre ).
out->write( |Calculadora de { lv_nombre } Pantalla: { lv_valor }| ).

  "sumar 100

 lo_calculadora->sumar( 100 ).
 lo_calculadora->get_valor( IMPORTING o_valor = lv_valor ).
 out->write( |Calculadora de { lv_nombre } Pantalla: { lv_valor }| ).

 "multiplicar por 3
  lo_calculadora->multiplicar( 3 ).
  lo_calculadora->get_valor( IMPORTING o_valor = lv_valor ).
  out->write( |Calculadora de { lv_nombre } Pantalla: { lv_valor }| ).

  "restar 50
  lo_calculadora->restar( 50 ).
  lo_calculadora->get_valor( IMPORTING o_valor = lv_valor ).
  out->write( |Calculadora de { lv_nombre } Pantalla: { lv_valor }| ).

"dividir entre 5
 lo_calculadora->dividir(
  i_valor = 5
  out     = out
).
lo_calculadora->get_valor( IMPORTING o_valor = lv_valor ).
out->write( |Calculadora de { lv_nombre } Pantalla: { lv_valor }| ).

"dividir entre 0
lo_calculadora->dividir(
  i_valor = 0
  out     = out
).
lo_calculadora->get_valor( IMPORTING o_valor = lv_valor ).
out->write( |Calculadora de { lv_nombre } Pantalla: { lv_valor }| ).

  "pulsar reset
  lo_calculadora->reset( ).
  lo_calculadora->get_valor( IMPORTING o_valor = lv_valor ).
  out->write( |Calculadora de: { lv_nombre } Pantalla: { lv_valor }| ).


 ENDMETHOD.
ENDCLASS.
