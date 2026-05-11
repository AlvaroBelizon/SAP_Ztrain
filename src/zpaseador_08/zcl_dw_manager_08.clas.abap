CLASS zcl_dw_manager_08 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

*  la idea es que sea una clase de negocio, no pinta mensaje sino decide una operación
* primero crearemos dueño como entidad principal del modelo

*el método necesita recibir datos de entrada y luego devolver si la operación ha salido bien o mal.

* se debe crear cada data table, dueño, valoracion, perro, paseador y servicio

*Todos se parecen porque todos hacen el mismo tipo de operación:
*
*reciben una estructura completa de una tabla y devuelven si la creación fue correcta o no.

*


* Esta línea crea un tipo de tabla interna Creo un tipo llamado tt_servicios, que será una tabla interna de registros con estructura zdw_servicios_08.
TYPES tt_servicios TYPE STANDARD TABLE OF zdw_servicios_08 WITH EMPTY KEY.


" Métodos públicos de escritura

 METHODS create_dueno
  IMPORTING
    o_dueno TYPE zdw_duenos_08
  RETURNING
*  rv = returning value
    VALUE(rv_dueno) TYPE abap_bool.



 METHODS create_perro   IMPORTING o_perro TYPE zdw_perros_08
 RETURNING VALUE(rv_perro) TYPE abap_bool.

 METHODS create_paseador  IMPORTING o_paseador TYPE zdw_paseador_08
 RETURNING VALUE(rv_paseador) TYPE abap_bool.

 METHODS create_valoracion  IMPORTING o_valoracion TYPE zdw_valoracion_8
 RETURNING VALUE(rv_valoracion) TYPE abap_bool.

 METHODS create_servicio  IMPORTING o_servicio TYPE zdw_servicios_08
 RETURNING VALUE(rv_servicio) TYPE abap_bool.




*   METODOS PUBLICOS DE CONSULTA

 METHODS get_servicios_paseador IMPORTING iv_id_paseador TYPE zdw_paseador_08-id_paseador
* rt = returning table       iv_id_paseador = importing value_ del id del paseador
 RETURNING VALUE(rt_servicios) TYPE tt_servicios.

  METHODS get_servicios_perro IMPORTING iv_id_perro TYPE zdw_perros_08-id_perro
* rt = returning table
 RETURNING VALUE(rt_servicios) TYPE tt_servicios.


 METHODS get_media_valoracion_paseador IMPORTING iv_id_paseador TYPE zdw_paseador_08-id_paseador
* rt = returning table
 RETURNING VALUE(rv_media) TYPE decfloat16.



  PROTECTED SECTION.
  PRIVATE SECTION.

*   MÉTODOS PRIVADOS — Validaciones
*    ├── check_dueno_exists
*    ├── check_perro_exists
*    ├── check_paseador_exists
*    ├── check_servicio_exists
*    └── check_servicio_completado

*Los check... son métodos privados de validación.
*
*Sirven para que la clase pueda preguntarse cosas antes de insertar datos:
*
*¿Existe este dueño?
*¿Existe este perro?
*¿Existe este paseador?
*¿Existe este servicio?
*¿Este servicio está completado?  SIEMPRE DEVUELVEN ABAP_TRUE O ABAP_FALSE

METHODS check_dueno_exists IMPORTING iv_id_dueno TYPE zdw_duenos_08-id_dueno
      RETURNING VALUE(rv_exists) TYPE abap_bool.


* Sirve para comprobar si existe un dueño con ese ID.
*
*Se usará en create_perro, porque un perro necesita tener dueño

METHODS check_perro_exists IMPORTING iv_id_perro TYPE zdw_perros_08-id_perro
      RETURNING VALUE(rv_exists) TYPE abap_bool.

METHODS check_paseador_exists IMPORTING iv_id_paseador TYPE zdw_paseador_08-id_paseador
      RETURNING VALUE(rv_exists) TYPE abap_bool.

METHODS check_servicio_exists IMPORTING iv_id_servicio TYPE zdw_servicios_08-id_servicio
      RETURNING VALUE(rv_exists) TYPE abap_bool.

METHODS check_servicio_completado IMPORTING iv_id_servicio TYPE zdw_servicios_08-id_servicio
      RETURNING VALUE(rv_exists) TYPE abap_bool.

ENDCLASS.



CLASS zcl_dw_manager_08 IMPLEMENTATION.



 METHOD create_dueno.




  ENDMETHOD.

 METHOD create_perro.
  ENDMETHOD.

 METHOD create_paseador.
  ENDMETHOD.

 METHOD create_servicio.
  ENDMETHOD.

 METHOD create_valoracion.
  ENDMETHOD.

 METHOD get_servicios_paseador.
  ENDMETHOD.

 METHOD get_servicios_perro.
  ENDMETHOD.

 METHOD  get_media_valoracion_paseador.
 ENDMETHOD.




METHOD  check_dueno_exists.
SELECT SINGLE @abap_true
* Como encuentre una fila, no me traigas la fila entera ni ná, méteme directamente un abap_true
    FROM zdw_duenos_08
* busca en la tabla dueños
     WHERE id_dueno = @iv_id_dueno
*  Pero solo quiero el dueño cuyo ID sea igual al ID que me han pasao por parámetro.”
    INTO @rv_exists.
*“Si lo encuentras, guarda el resultado en rv_exists.”

  IF sy-subrc <> 0.
    rv_exists = abap_false.

*“Si SAP no ha encontrao ná, entonces pon rv_exists a falso.”
  ENDIF.


 ENDMETHOD.


METHOD  check_perro_exists.
SELECT SINGLE @abap_true
    FROM zdw_perros_08
     WHERE id_perro = @iv_id_perro
    INTO @rv_exists.

  IF sy-subrc <> 0.
    rv_exists = abap_false.
  ENDIF.
 ENDMETHOD.

METHOD  check_paseador_exists.

SELECT SINGLE @abap_true
    FROM zdw_paseador_08
     WHERE id_paseador = @iv_id_paseador
    INTO @rv_exists.

  IF sy-subrc <> 0.
    rv_exists = abap_false.
  ENDIF.

 ENDMETHOD.


METHOD  check_servicio_exists.
SELECT SINGLE @abap_true
    FROM zdw_servicios_08
     WHERE id_servicio = @iv_id_servicio
    INTO @rv_exists.

  IF sy-subrc <> 0.
    rv_exists = abap_false.
  ENDIF.

 ENDMETHOD.


 METHOD  check_servicio_completado.
   SELECT SINGLE @abap_true
    FROM zdw_servicios_08
    WHERE id_servicio = @iv_id_servicio
      AND estado      = 'CO'
    INTO @rv_exists.

  IF sy-subrc <> 0.
    rv_exists = abap_false.
  ENDIF.

 ENDMETHOD.



ENDCLASS.
