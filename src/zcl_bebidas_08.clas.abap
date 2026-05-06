CLASS zcl_bebidas_08 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_bebidas_08 IMPLEMENTATION.



  METHOD if_oo_adt_classrun~main.

    DELETE FROM zbebidas_08.

     INSERT zbebidas_08 FROM TABLE @( VALUE #(
      ( codigo = 'BEB001' nombre = 'Vino Tinto'   tipo = 'Vino'      origen = 'España'    graduacion = '13.5' precio = '15.00' )
      ( codigo = 'BEB002' nombre = 'Cerveza IPA'  tipo = 'Cerveza'   origen = 'Bélgica'   graduacion = '6.2'  precio = '3.50'  )
      ( codigo = 'BEB003' nombre = 'Whisky'       tipo = 'Destilado' origen = 'Escocia'   graduacion = '40.0' precio = '45.00' )
      ( codigo = 'BEB004' nombre = 'Pisco'        tipo = 'Destilado' origen = 'Perú'      graduacion = '42.0' precio = '25.00' )
      ( codigo = 'BEB005' nombre = 'Ginebra'      tipo = 'Destilado' origen = 'Inglaterra' graduacion = '37.5' precio = '18.00' )
      ( codigo = 'BEB006' nombre = 'Sidra'        tipo = 'Fermentado' origen = 'España'    graduacion = '4.5'  precio = '5.00'  )
    ) ).

    COMMIT WORK.

    out->write( 'Datos de bebidas cargados correctamente.' ).

  ENDMETHOD.



ENDCLASS.
