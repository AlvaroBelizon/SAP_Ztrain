CLASS zcl_cuadro_08 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.




  METHODS:

      constructor IMPORTING i_titulo TYPE string i_anyo TYPE i,

      set_titulo IMPORTING  i_titulo TYPE string,
      get_titulo EXPORTING o_titulo TYPE string,

      set_anyo IMPORTING  i_anyo TYPE i,
      get_anyo EXPORTING o_anyo TYPE i,


      esta_expuesto RETURNING VALUE(rv_result) TYPE abap_bool,

      mostrar_ficha EXPORTING o_ficha TYPE string.



  PROTECTED SECTION.
  PRIVATE SECTION.

  DATA:
      titulo TYPE string,
      anyo    TYPE i.


ENDCLASS.



CLASS zcl_cuadro_08 IMPLEMENTATION.


METHOD constructor.
  titulo = i_titulo.
  anyo   = i_anyo.
ENDMETHOD.

  METHOD get_titulo.
    o_titulo = titulo.
  ENDMETHOD.

  METHOD set_titulo.
    titulo = i_titulo.
  ENDMETHOD.

  METHOD set_anyo.
    anyo = i_anyo.
  ENDMETHOD.

  METHOD get_anyo.
    o_anyo = anyo.
  ENDMETHOD.

  METHOD esta_expuesto.
    IF anyo > 1800.
      rv_result = abap_true.
    ELSE.
      rv_result = abap_false.
    ENDIF.
  ENDMETHOD.



METHOD mostrar_ficha.
Data lv_estado TYPE string.
if anyo > 1800.
 lv_estado = 'En exposicion'.
ELSE.
 lv_estado = 'Almacenado'.
ENDIF.
o_ficha = |Titulo: { titulo } / Año: { anyo } / { lv_estado } |.

ENDMETHOD.

ENDCLASS.


