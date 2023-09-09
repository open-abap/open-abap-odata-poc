CLASS zcl_oao_property DEFINITION PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_mgw_odata_property.

    DATA mv_is_key     TYPE abap_bool.
    DATA mv_filterable TYPE abap_bool.
    DATA mv_nullable   TYPE abap_bool.
    DATA mv_sortable   TYPE abap_bool.
    DATA mv_updatable  TYPE abap_bool.
    DATA mv_creatable  TYPE abap_bool.
    DATA mv_maxlength  TYPE i.
    DATA mv_edm_type   TYPE zif_mgw_med_odata_types=>ty_e_med_edm_type.
ENDCLASS.

CLASS zcl_oao_property IMPLEMENTATION.

  METHOD zif_mgw_odata_item~set_label_from_text_element.
* todo??
    RETURN.
  ENDMETHOD.

  METHOD zif_mgw_odata_property~set_type_edm_string.
    mv_edm_type = zif_mgw_med_odata_types=>gcs_edm_data_types-string.
  ENDMETHOD.

  METHOD zif_mgw_odata_property~set_maxlength.
    mv_maxlength = iv_max_length.
  ENDMETHOD.

  METHOD zif_mgw_odata_property~set_creatable.
    mv_creatable = iv_creatable.
  ENDMETHOD.

  METHOD zif_mgw_odata_property~set_updatable.
    mv_updatable = iv_updatable.
  ENDMETHOD.

  METHOD zif_mgw_odata_property~set_sortable.
    mv_sortable = iv_sortable.
  ENDMETHOD.

  METHOD zif_mgw_odata_property~set_nullable.
    mv_nullable = iv_nullable.
  ENDMETHOD.

  METHOD zif_mgw_odata_property~set_filterable.
    mv_filterable = iv_filterable.
  ENDMETHOD.

  METHOD zif_mgw_odata_property~set_is_key.
    mv_is_key = iv_key.
  ENDMETHOD.

  METHOD zif_mgw_odata_annotatabl~create_annotation.
    CREATE OBJECT ro_annotation TYPE zcl_oao_annotation.
  ENDMETHOD.

ENDCLASS.