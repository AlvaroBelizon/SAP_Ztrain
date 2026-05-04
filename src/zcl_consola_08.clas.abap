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
*BOMBILLA
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

***CUADRO
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


*Calculadora
*
*  DATA(lo_calculadora) = NEW zcl_calculadora(
*    i_valor  = 0
*    i_nombre = 'Alvarinho'
*  ).
*
*  DATA lv_valor TYPE i.
*  DATA lv_nombre TYPE string.
*
*
* " Estado inicial
*lo_calculadora->get_valor( IMPORTING o_valor = lv_valor ).
*lo_calculadora->get_nombre( IMPORTING o_nombre = lv_nombre ).
*out->write( |Calculadora de { lv_nombre } Pantalla: { lv_valor }| ).
*
*  "sumar 100
*
* lo_calculadora->sumar( 100 ).
* lo_calculadora->get_valor( IMPORTING o_valor = lv_valor ).
* out->write( |Calculadora de { lv_nombre } Pantalla: { lv_valor }| ).
*
* "multiplicar por 3
*  lo_calculadora->multiplicar( 3 ).
*  lo_calculadora->get_valor( IMPORTING o_valor = lv_valor ).
*  out->write( |Calculadora de { lv_nombre } Pantalla: { lv_valor }| ).
*
*  "restar 50
*  lo_calculadora->restar( 50 ).
*  lo_calculadora->get_valor( IMPORTING o_valor = lv_valor ).
*  out->write( |Calculadora de { lv_nombre } Pantalla: { lv_valor }| ).
*
*"dividir entre 5
* lo_calculadora->dividir( i_valor = 5 out = out ).
* lo_calculadora->get_valor( IMPORTING o_valor = lv_valor ).
* out->write( |Calculadora de { lv_nombre } Pantalla: { lv_valor }| ).
*
*"dividir entre 0
* lo_calculadora->dividir( i_valor = 0 out = out ).
* lo_calculadora->get_valor( IMPORTING o_valor = lv_valor ).
* out->write( |Calculadora de { lv_nombre } Pantalla: { lv_valor }| ).
*
*  "pulsar reset
*  lo_calculadora->reset( ).
*  lo_calculadora->get_valor( IMPORTING o_valor = lv_valor ).
*  out->write( |Calculadora de: { lv_nombre } Pantalla: { lv_valor }| ).

*DATA(lo_alumnos) = NEW zcl_tabla_alumno( ).
*
*
*DATA lv_valido TYPE abap_bool
*lo_alumnos->insertar_1(
*          i_dni = '32323232323A'
*          i_nombre = 'Alvaro'
*          i_fecha_nac = '19823495'
*          i_curso = 'ABAP'
*          i_nota = 10
*          IMPORTING
*          o_valido = rv_valido).
*
*         "esta comprobacion indica si ha ido bien o mal
*         if sy-subrc = 0.
*         out->write( 'Correcto' ).
*         else .
*         out->write( 'Error al insertar' ).
*         endif.
*
*lo_alumnos->insertar_1 i_alumno = NEW zcl_alumno( i_nombre = 'Alvaro' i_edad = 20 ) ).
*lo_alumnos->insertar_alumno( i_alumno = NEW zcl_alumno( i_nombre = 'Alfredo' i_edad = 21 ) ).
*lo_alumnos->insertar_alumno( i_alumno = NEW zcl_alumno( i_nombre = 'Alicia' i_edad = 22 )

*RELACIONAR TABLAS _


*TYPES: BEGIN OF ty_reservas,
*              name    TYPE /dmo/agency-name, " El nombre de la aerolinea
*             travel_id  TYPE  /dmo/travel_id,
*            connection_id TYPE  /dmo/booking-connection_id,
*            flight_date TYPE /dmo/booking-flight_date,
*            flight_price TYPE /dmo/booking-flight_price,
*           END OF ty_reservas.
*
*DATA ls_reservas TYPE ty_reservas.
*DATA lt_reservas TYPE TABLE OF ty_reservas.
*
*
*
*
* SELECT travel_id,
*        connection_id,
*        flight_price,
*        flight_date FROM /dmo/booking INTO TABLE @DATA(lt_booking).
*
*      IF sy-subrc = 0.
*
*
** seleccion de viajes
*      SELECT travel_id , agency_id FROM /dmo/travel INTO TABLE @DATA(lt_travel).
*     out->write( lt_booking ).
*    ENDIF.
*
*
*
*     SELECT agency_id, name FROM /dmo/agency INTO TABLE @DATA(lt_agency) .
*    IF sy-subrc = 0.
**      out->write( lt_flight ).
*    ENDIF.
*
*
*
*    LOOP AT lt_booking INTO DATA(ls_booking).
*
*      " Por cada vuelo busco el nombre en la tabla de aerolíneas
*      READ TABLE lt_travel INTO DATA(ls_travel)
*          WITH KEY travel_id = ls_booking-travel_id. " Comparo por ID
*      IF sy-subrc = 0.
*
*
*
*
*      ENDIF.
*
*      READ TABLE lt_agency INTO DATA(ls_agency)
*          WITH KEY agency_id = ls_travel-agency_id. " Comparo por ID
*      IF sy-subrc = 0.
*
*       ls_reservas = VALUE #( name = ls_agency-name
*                             connection_id = ls_booking-connection_id
*                             flight_date = ls_booking-flight_date
*                             flight_price = ls_booking-flight_price ).
*
*        " Añado la estructura a la tabla del informe
*        APPEND ls_reservas TO lt_reservas.
*
*ENDIF.
*ENDLOOP.
*
*out->write( lt_reservas ).



DATA(lo_empleado) = NEW zcl_empleado_08(
  i_nombre       = 'Zinedine Zidane'
  i_dni          = '5102021618A'
  i_salario_base = 1200

 ).

DATA(lo_empleado_fijo) = NEW zcl_empleado_fijo_08(
  i_nombre        = 'Alvaro Morralla'
  i_dni           = '77777777777Z'
  i_salario_base  = 1200
  i_anyos_empresa = 6
).

DATA(lo_empleado_temporal) = NEW zcl_empleado_temporal_08(

  i_nombre        = 'Roberto Larcos'
  i_dni           = '7333333333Z'
  i_salario_base  = 1200
  i_horas_trabajadas = 6
  i_precio_hora = 7
).

out->write( lo_empleado->get_ficha_empleado( ) ).
    out->write(  '--------------------------' ).
    out->write( lo_empleado_fijo->get_ficha_empleado( ) ).
    out->write(  '--------------------------' ).
    out->write( lo_empleado_temporal->get_ficha_empleado( ) ).

    out->write(  '--------------------------' ).
    out->write(  '--------------------------' ).

    out->write( lo_empleado->calcular_salario_final( ) ).
    out->write(  '--------------------------' ).
    out->write( lo_empleado_fijo->calcular_salario_final( ) ).
    out->write(  '--------------------------' ).
    out->write( lo_empleado_temporal->calcular_salario_final( ) ).


 ENDMETHOD.
ENDCLASS.

