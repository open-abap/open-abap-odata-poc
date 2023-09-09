CLASS zcx_mgw_not_impl_exc DEFINITION INHERITING FROM zcx_mgw_tech_exception PUBLIC.
  PUBLIC SECTION.
    METHODS constructor
      IMPORTING
        textid   LIKE if_t100_message=>t100key OPTIONAL
        previous LIKE previous OPTIONAL
        method   TYPE string OPTIONAL.
ENDCLASS.

CLASS zcx_mgw_not_impl_exc IMPLEMENTATION.

  METHOD constructor.
    super->constructor( textid   = textid
                        previous = previous ).
  ENDMETHOD.

ENDCLASS.