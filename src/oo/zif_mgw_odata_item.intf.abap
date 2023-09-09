INTERFACE zif_mgw_odata_item PUBLIC.

  METHODS set_label_from_text_element
    IMPORTING
      iv_text_element_symbol    TYPE zoao_textpoolky
      iv_text_element_container TYPE string OPTIONAL
    RAISING
      zcx_mgw_med_exception.

ENDINTERFACE.