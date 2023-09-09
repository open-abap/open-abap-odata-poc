INTERFACE zif_mgw_odata_annotatabl PUBLIC.

  METHODS create_annotation
    IMPORTING
      iv_annotation_namespace TYPE zoao_med_anno_namespace
    RETURNING
      VALUE(ro_annotation)    TYPE REF TO zif_mgw_odata_annotation
    RAISING
      zcx_mgw_med_exception.

ENDINTERFACE.