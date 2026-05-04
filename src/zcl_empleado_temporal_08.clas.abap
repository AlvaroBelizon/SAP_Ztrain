CLASS zcl_empleado_temporal_08 DEFINITION
  PUBLIC
  INHERITING FROM zcl_empleado_08
  FINAL
  CREATE PUBLIC .
*Clase hija 2: ZCL_EMPLEADO_TEMPORAL
*Empleado con contrato temporal. Trabaja por horas.
*
*Atributos adicionales: horas trabajadas y precio por hora
*Redefine el cálculo del salario: salario base + (horas × precio/hora)
*Redefine la ficha para incluir sus datos propios

  PUBLIC SECTION.
   METHODS:
      constructor
        IMPORTING
          i_nombre          TYPE string
          i_dni             TYPE string
          i_salario_base    TYPE i
          i_horas_trabajadas TYPE i
          i_precio_hora     TYPE i,

      get_ficha_empleado
        REDEFINITION,

      calcular_salario_final
        REDEFINITION.

  PROTECTED SECTION.
   DATA:
      mv_horas_trabajadas TYPE i,
      mv_precio_hora      TYPE i.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_empleado_temporal_08 IMPLEMENTATION.

 METHOD constructor.

    super->constructor(
      i_nombre       = i_nombre
      i_dni          = i_dni
      i_salario_base = i_salario_base
    ).

    mv_horas_trabajadas = i_horas_trabajadas.
    mv_precio_hora      = i_precio_hora.

  ENDMETHOD.

  METHOD calcular_salario_final.

    rv_salario_final = mv_salario_base + ( mv_horas_trabajadas * mv_precio_hora ).

  ENDMETHOD.

  METHOD get_ficha_empleado.

  DATA(lv_ficha_padre) = super->get_ficha_empleado( ).
         rs_ficha_empleado =   |{ lv_ficha_padre } | &&
      |Horas trabajadas: { mv_horas_trabajadas } | &&
      |Precio/hora: { mv_precio_hora } € | &&
      |Tipo: Empleado temporal|.


  ENDMETHOD.


ENDCLASS.
