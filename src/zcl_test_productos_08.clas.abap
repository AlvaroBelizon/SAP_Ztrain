*CLASS zcl_test_productos_08 DEFINITION
*  PUBLIC
*  FINAL
*  CREATE PUBLIC .
*
*  PUBLIC SECTION.
*
*
*  INTERFACES if_oo_adt_classrun .
*  PROTECTED SECTION.
*  PRIVATE SECTION.
*ENDCLASS.
*
*
*
*CLASS zcl_test_productos_08 IMPLEMENTATION.
*METHOD if_oo_adt_classrun~main.
*
**Inserta tres productos con IDs 00000001, 00000002 y 00000003.
* DATA(lo_producto) = NEW zcl_productos_08( ).
*    DATA lv_valido TYPE abap_bool.
*
*   DATA ls_producto TYPE zproducto_08.
*
*    ls_producto = VALUE zproducto_08(
*    producto_id = '00000001'
*    nombre      = 'Producto 1'
*    categoria   = 'CAT1'
*    cuky_field  = 'EUR'
*    precio      = 20
*    stock       = 100
*    activo      = abap_true ).
*
*  lo_producto->insertar(
*    EXPORTING
*      i_producto = ls_producto
*    IMPORTING
*      o_valido   = lv_valido ).
*
*     CLASS zcl_test_productos_08 DEFINITION
*  PUBLIC
*  FINAL
*  CREATE PUBLIC .
*
*  PUBLIC SECTION.
*
*
*  INTERFACES if_oo_adt_classrun .
*  PROTECTED SECTION.
*  PRIVATE SECTION.
*ENDCLASS.
*
*
*
*CLASS zcl_test_productos_08 IMPLEMENTATION.
*METHOD if_oo_adt_classrun~main.
*
**Inserta tres productos con IDs 00000001, 00000002 y 00000003.
* DATA(lo_producto) = NEW zcl_productos_08( ).
*    DATA lv_valido TYPE abap_bool.
*    DATA lt_producto TYPE zproducto_08.
*   DATA ls_producto TYPE zproducto_08.
*
*    DATA(ls_producto) = VALUE zproducto_08(
*    producto_id = '00000002'
*    nombre      = 'Producto 2'
*    categoria   = 'CAT2'
*    cuky_field  = 'EUR'
*    precio      = 20
*    stock       = 100
*    activo      = abap_true ).
*
*  lo_producto->insertar(
*    EXPORTING
*      i_producto = ls_producto
*    IMPORTING
*      o_valido   = lv_valido ).
*
*          DATA(ls_producto) = VALUE zproducto_08(
*    producto_id = '00000003'
*    nombre      = 'Producto 3'
*    categoria   = 'CAT3'
*    cuky_field  = 'EUR'
*    precio      = 20
*    stock       = 100
*    activo      = abap_true ).
*
*  lo_producto->insertar(
*    EXPORTING
*      i_producto = ls_producto
*    IMPORTING
*      o_valido   = lv_valido ).
*
*
*
*
*
*
*ENDMETHOD.
*ENDCLASS.
*
*
*
*
*
*ENDMETHOD.
*ENDCLASS.
CLASS zcl_test_productos_08 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

ENDCLASS.


CLASS zcl_test_productos_08 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA(lo_producto) = NEW zcl_productos_08( ).
    DATA lv_valido TYPE abap_bool.
    DATA ls_producto TYPE zproducto_08.

    " Producto 1
    ls_producto = VALUE zproducto_08(
      producto_id = '00000001'
      nombre      = 'Producto 1'
      categoria   = 'CAT1'
      cuky_field  = 'EUR'
      precio      = 20
      stock       = 100
      activo      = abap_true ).

    lo_producto->insertar(
      EXPORTING
        i_producto = ls_producto
      IMPORTING
        o_valido   = lv_valido ).

    " Producto 2
    ls_producto = VALUE zproducto_08(
      producto_id = '00000002'
      nombre      = 'Producto 2'
      categoria   = 'CAT2'
      cuky_field  = 'EUR'
      precio      = 20
      stock       = 100
      activo      = abap_true ).


    lo_producto->insertar(
      EXPORTING
        i_producto = ls_producto
      IMPORTING
        o_valido   = lv_valido ).

    " Producto 3
    ls_producto = VALUE zproducto_08(
      producto_id = '00000003'
      nombre      = 'Producto 3'
      categoria   = 'CAT3'
      cuky_field  = 'EUR'
      precio      = 20
      stock       = 100
      activo      = abap_true ).

    lo_producto->insertar(
      EXPORTING
        i_producto = ls_producto
      IMPORTING
        o_valido   = lv_valido ).

*  ENDMETHOD.



*  METHOD lo_producto->buscarID()


DATA lv_encontrado TYPE abap_bool.


lo_producto->buscarID(
  EXPORTING
    i_producto    = '00000002'
  IMPORTING
    o_producto    = ls_producto
    o_encontrado  = lv_encontrado ).

IF lv_encontrado = abap_true.
  out->write( |Nombre: { ls_producto-nombre } Precio: { ls_producto-precio }| ).
ELSE.
  out->write( 'Producto no encontrado' ).
ENDIF.
ENDMETHOD.



ENDCLASS.
