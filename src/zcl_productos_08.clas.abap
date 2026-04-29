CLASS zcl_productos_08 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  METHODS:
*insertar_1 IMPORTING
*                   i_producto  TYPE zproducto_id_08
*                   i_nombre    TYPE zproducto_nom_08
*                   i_producto TYPE zproducto_cat_08
*                   i_precio     TYPE zproducto_prc_08
*                   i_stock      TYPE zproducto_stk_08
*
*                 EXPORTING
*                   o_valido    TYPE abap_bool.
*
*         IF o_valido = abap_true. " Ha ido bien
*      out->write( 'Inserción correcta' ).
*    ELSE.
*      out->write( 'Inserción incorrecta' ).
*    ENDIF.

     insertar IMPORTING

               i_producto TYPE zproducto_08
               EXPORTING
              o_valido   TYPE abap_bool,


      buscarID IMPORTING
          i_producto TYPE zproducto_08-producto_id
          EXPORTING
          o_producto TYPE zproducto_08
          o_encontrado TYPE abap_bool,


         modificar IMPORTING
    i_producto TYPE zproducto_08
  EXPORTING
    o_valido   TYPE abap_bool,


    borrar IMPORTING
    i_producto TYPE zproducto_08
   EXPORTING
   o_valido TYPE abap_bool.






  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_productos_08 IMPLEMENTATION.

  METHOD insertar.

*     ls_producto = i_producto.

    " Se añade a la BD
    INSERT zproducto_08 FROM @i_producto.
    " Esta comprobación indica si ha ido bien o mal
    IF sy-subrc = 0. " Ha ido bien
      o_valido = abap_true.
    ELSE.
      o_valido = abap_false.
    ENDIF.

 ENDMETHOD.



METHOD  buscarID.

SELECT SINGLE *
  FROM zproducto_08
  WHERE producto_id = @i_producto
  INTO @o_producto.
   IF sy-subrc = 0. " Ha ido bien
      o_encontrado = abap_true.
    ELSE.
      o_encontrado = abap_false.
    ENDIF.
ENDMETHOD.



METHOD modificar.
 UPDATE zproducto_08 FROM @i_producto.
  IF sy-subrc = 0. " Ha ido bien
      o_valido = abap_true.
    ELSE.
      o_valido = abap_false.
    ENDIF.

ENDMETHOD.

METHOD borrar.
    DELETE FROM zproducto_08
    WHERE producto_id = @i_producto-producto_id.

 IF sy-subrc = 0. " Ha ido bien
      o_valido = abap_true.
    ELSE.
      o_valido = abap_false.
    ENDIF.
ENDMETHOD.





ENDCLASS.
