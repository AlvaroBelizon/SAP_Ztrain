CLASS zcl_tablas_atb DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
ENDCLASS.

CLASS zcl_tablas_atb IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  types:BEGIN OF ty_alumnos,
        nombre TYPE string,
        edad type i,
        ciudad type string,
        end OF ty_aLUMNOS.

  DATA ls_alumnos TYPE ty_alumnos. "Declaracion de una estructura interna

  ls_alumnos-nombre = 'Juan'.
  ls_alumnos-edad = 23.
  ls_alumnos-ciudad = 'Madrid'.

  out->write( ls_alumnos ).




 DATA: lt_vuelos TYPE TABLE OF /dmo/flight,
          ls_vuelo  TYPE /dmo/flight,
          lv_total  TYPE p LENGTH 10 DECIMALS 2.

    SELECT *
      FROM /dmo/flight
      INTO TABLE @lt_vuelos.

    out->write( lt_vuelos ).

    LOOP AT lt_vuelos INTO ls_vuelo.
      lv_total = lv_total + ls_vuelo-price.
    ENDLOOP.

    out->write( |Total del precio de todos los vuelos: { lv_total }| ).



  ENDMETHOD.

ENDCLASS.
