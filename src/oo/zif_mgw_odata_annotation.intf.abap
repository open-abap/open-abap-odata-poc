INTERFACE zif_mgw_odata_annotation PUBLIC.

  METHODS add
    IMPORTING
      iv_key      TYPE zoao_med_annotation_key
      iv_value    TYPE zoao_med_annotation_value
      iv_ref_anno TYPE abap_bool DEFAULT abap_true.

ENDINTERFACE.