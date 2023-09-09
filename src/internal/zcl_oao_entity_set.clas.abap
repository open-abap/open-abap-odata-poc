CLASS zcl_oao_entity_set DEFINITION PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_mgw_odata_entity_set.

  PRIVATE SECTION.
    DATA mv_creatable       TYPE abap_bool.
    DATA mv_updatable       TYPE abap_bool.
    DATA mv_deletable       TYPE abap_bool.
    DATA mv_pageable        TYPE abap_bool.
    DATA mv_addressable     TYPE abap_bool.
    DATA mv_fsearch         TYPE abap_bool.
    DATA mv_subscribable    TYPE abap_bool.
    DATA mv_filter_required TYPE abap_bool.
ENDCLASS.

CLASS zcl_oao_entity_set IMPLEMENTATION.

  METHOD zif_mgw_odata_entity_set~set_creatable.
    mv_creatable = iv_creatable.
  ENDMETHOD.

  METHOD zif_mgw_odata_entity_set~set_updatable.
    mv_updatable = iv_updatable.
  ENDMETHOD.

  METHOD zif_mgw_odata_entity_set~set_deletable.
    mv_deletable = iv_deletable.
  ENDMETHOD.

  METHOD zif_mgw_odata_entity_set~set_pageable.
    mv_pageable = iv_pageable.
  ENDMETHOD.

  METHOD zif_mgw_odata_entity_set~set_addressable.
    mv_addressable = iv_addressable.
  ENDMETHOD.

  METHOD zif_mgw_odata_entity_set~set_has_ftxt_search.
    mv_fsearch = iv_fsearch.
  ENDMETHOD.

  METHOD zif_mgw_odata_entity_set~set_subscribable.
    mv_subscribable = iv_subscribable.
  ENDMETHOD.

  METHOD zif_mgw_odata_entity_set~set_filter_required.
    mv_filter_required = iv_req_filter.
  ENDMETHOD.

ENDCLASS.