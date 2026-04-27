CLASS zcl_precios DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_precios IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

  TYPES: BEGIN OF ty_videojuego,
             id         TYPE i,
             titulo     TYPE string,
             genero     TYPE string,
             plataforma TYPE string,
             precio     TYPE p LENGTH 8 DECIMALS 2,
           END OF ty_videojuego.

     DATA: lt_agencias TYPE TABLE OF /dmo/agency.

    DATA: lt_juegos TYPE TABLE OF ty_videojuego.

    DATA: ls_juegos TYPE ty_videojuego,
      lv_rpg   TYPE i.

        lv_rpg = 0.

    DATA: lt_vuelos TYPE TABLE OF /dmo/flight,
          ls_vuelo  TYPE /dmo/flight,
          lv_total  TYPE p LENGTH 10 DECIMALS 2.

    APPEND VALUE #( id = 1  titulo = 'FIFA 24' genero = 'Deportes' plataforma = 'PS5' precio = '69.99' ) TO lt_juegos.
    APPEND VALUE #( id = 2  titulo = 'GTA V' genero = 'Accion' plataforma = 'PC' precio = '29.99' ) TO lt_juegos.
    APPEND VALUE #( id = 3  titulo = 'Minecraft' genero = 'Sandbox' plataforma = 'PC' precio = '19.99' ) TO lt_juegos.
    APPEND VALUE #( id = 4  titulo = 'Zelda' genero = 'Aventura' plataforma = 'Switch' precio = '59.99' ) TO lt_juegos.
    APPEND VALUE #( id = 5  titulo = 'Mario Kart' genero = 'Carreras' plataforma = 'Switch' precio = '49.99' ) TO lt_juegos.
    APPEND VALUE #( id = 6  titulo = 'COD MW3' genero = 'Shooter' plataforma = 'PS5' precio = '74.99' ) TO lt_juegos.
    APPEND VALUE #( id = 7  titulo = 'Fortnite' genero = 'Battle' plataforma = 'PC' precio = '0.00' ) TO lt_juegos.
    APPEND VALUE #( id = 8  titulo = 'Elden Ring' genero = 'RPG' plataforma = 'PS5' precio = '64.99' ) TO lt_juegos.
    APPEND VALUE #( id = 9  titulo = 'The Witcher 3' genero = 'RPG' plataforma = 'PC' precio = '24.99' ) TO lt_juegos.
    APPEND VALUE #( id = 10 titulo = 'NBA 2K24' genero = 'Deportes' plataforma = 'Xbox' precio = '69.99' ) TO lt_juegos.

    out->write( lt_juegos ).

*SELECT *
*  FROM /dmo/agency
*  INTO TABLE @lt_agencias.
*
*out->write( lt_agencias ).

DATA: ls_juego TYPE ty_videojuego,
      lv_total_juegos TYPE p LENGTH 10 DECIMALS 2.

lv_total_juegos = 0.

LOOP AT lt_juegos INTO ls_juego.
  lv_total_juegos = lv_total_juegos + ls_juego-precio.
ENDLOOP.

out->write(
  |Total precio de todos los juegos: { lv_total_juegos }|
).

LOOP AT lt_juegos INTO ls_juego.
  IF ls_juego-genero = 'RPG'.
    lv_rpg = lv_rpg + 1.
  ENDIF.
ENDLOOP.

out->write( |Cantidad de juegos RPG: { lv_rpg }| ).


*SELECT *
*  FROM /dmo/flight
*  INTO TABLE @lt_vuelos.

*out->write( lt_vuelos ).


*  LOOP AT lt_vuelos INTO ls_vuelo.
*    lv_total = lv_total + ls_vuelo-price.
*   ENDLOOP.

*   out->write( |Total del precio de todos los vuelos: { lv_total }| ).

  ENDMETHOD.

ENDCLASS.

