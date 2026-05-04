CLASS zcl_empleado_fijo_08 DEFINITION
  PUBLIC
  INHERITING FROM zcl_empleado_08
  FINAL
  CREATE PUBLIC .
*Clase hija 1: ZCL_EMPLEADO_FIJO
*Empleado con contrato indefinido. Lleva años en la empresa y tiene derecho a un plus de antigüedad.
*
*Atributo adicional: años en la empresa
*Redefine el cálculo del salario: salario base + (años × 50€)
*Redefine la ficha para incluir sus datos propios

  PUBLIC SECTION.



  METHODS:
      constructor
        IMPORTING
          i_nombre         TYPE string
          i_dni            TYPE string
          i_salario_base   TYPE i
          i_anyos_empresa  TYPE i,

      get_ficha_empleado
        REDEFINITION,

      calcular_salario_final
        REDEFINITION.

  PROTECTED SECTION.

    DATA:
      mv_anyos_empresa TYPE i.


PRIVATE SECTION.
ENDCLASS.



CLASS zcl_empleado_fijo_08 IMPLEMENTATION.

METHOD constructor.
    super->constructor(
      i_nombre       = i_nombre
      i_dni          = i_dni
      i_salario_base = i_salario_base
    ).

    mv_anyos_empresa = i_anyos_empresa.

ENDMETHOD.

METHOD calcular_salario_final.
    rv_salario_final = mv_salario_base + ( mv_anyos_empresa * 50 ).
  ENDMETHOD.


 METHOD get_ficha_empleado.
    DATA(lv_ficha_padre) = super->get_ficha_empleado( ).

    rs_ficha_empleado = |{ lv_ficha_padre } | &
               |Años en la empresa: { mv_anyos_empresa } | &
               |Tipo: empleado fijo|.
  ENDMETHOD.
ENDCLASS.
