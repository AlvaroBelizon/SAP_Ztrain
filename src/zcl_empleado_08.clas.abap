CLASS zcl_empleado_08 DEFINITION
  PUBLIC

  CREATE PUBLIC .

  PUBLIC SECTION.
*Atributos: nombre, DNI, salario base
*Un método que devuelva una ficha con los datos del empleado
*Un método que calcule el salario final — de momento devuelve el salario base tal cual
*mv -> member value
    DATA:
      mv_nombre TYPE string,
      mv_dni    TYPE string,
      mv_salario_base TYPE i.

    METHODS:
      constructor
        IMPORTING
          i_nombre TYPE string
          i_dni    TYPE string
          i_salario_base TYPE i,

      get_ficha_empleado
        RETURNING
          VALUE(rs_ficha_empleado) TYPE string,

      calcular_salario_final
        RETURNING VALUE(rv_salario_final) TYPE i.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_empleado_08 IMPLEMENTATION.

METHOD
Constructor.
    mv_nombre = i_nombre.
    mv_dni = i_dni.
    mv_salario_base = i_salario_base.

ENDMETHOD.

 METHOD get_ficha_empleado.
    rs_ficha_empleado = |Nombre: { mv_nombre } | &
               |Dni: { mv_dni } | &
               |Salario Base: { mv_salario_base } |.
  ENDMETHOD.

METHOD  calcular_salario_final.
      rv_salario_final = 0.


ENDMETHOD.



ENDCLASS.
