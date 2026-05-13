CLASS LHC_ZR_PRO_088_P DEFINITION INHERITING FROM CL_ABAP_BEHAVIOR_HANDLER.
  PRIVATE SECTION.
    METHODS:
      GET_GLOBAL_AUTHORIZATIONS FOR GLOBAL AUTHORIZATION
        IMPORTING
          REQUEST requested_authorizations FOR ZrPro088P
        RESULT result,

      marcar_activo FOR MODIFY
        IMPORTING keys FOR ACTION ZrPro088P~marcar_activo
        RESULT result.

ENDCLASS.

CLASS LHC_ZR_PRO_088_P IMPLEMENTATION.

  METHOD GET_GLOBAL_AUTHORIZATIONS.
  ENDMETHOD.

  METHOD marcar_activo.

    MODIFY ENTITIES OF ZR_PRO_088_P IN LOCAL MODE
      ENTITY ZrPro088P
        UPDATE FIELDS ( IsActive )
        WITH VALUE #(
          FOR key IN keys
          (
            %tky     = key-%tky
            IsActive = abap_true
          )
        )
      FAILED failed
      REPORTED reported.

    READ ENTITIES OF ZR_PRO_088_P IN LOCAL MODE
      ENTITY ZrPro088P
        ALL FIELDS
        WITH CORRESPONDING #( keys )
      RESULT DATA(lt_profesionales).

    result = VALUE #(
      FOR ls_prof IN lt_profesionales
      (
        %tky   = ls_prof-%tky
        %param = ls_prof
      )
    ).

  ENDMETHOD.

ENDCLASS.
