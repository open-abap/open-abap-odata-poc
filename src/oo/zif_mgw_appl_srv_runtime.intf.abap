INTERFACE zif_mgw_appl_srv_runtime PUBLIC.

  TYPES ty_s_mgw_response_entity_cntxt TYPE string.
  TYPES ty_s_mgw_response_context      TYPE string.

  METHODS get_stream
    IMPORTING
      iv_entity_name          TYPE string
      iv_entity_set_name      TYPE string
      iv_source_name          TYPE string
      it_key_tab              TYPE string
      it_navigation_path      TYPE string
      io_tech_request_context TYPE string
    EXPORTING
      er_stream               TYPE string
      es_response_context     TYPE string.

  METHODS update_stream
    IMPORTING
      iv_entity_name          TYPE string
      iv_entity_set_name      TYPE string
      iv_source_name          TYPE string
      is_media_resource       TYPE string
      it_key_tab              TYPE string
      it_navigation_path      TYPE string
      io_tech_request_context TYPE string.

  METHODS create_deep_entity
    IMPORTING
      iv_entity_name          TYPE string
      iv_entity_set_name      TYPE string
      iv_source_name          TYPE string
      io_data_provider        TYPE string
      it_key_tab              TYPE string
      it_navigation_path      TYPE string
      io_expand               TYPE string
      io_tech_request_context TYPE string
    EXPORTING
      er_deep_entitity        TYPE string.

  METHODS create_entity
    IMPORTING
      iv_entity_name          TYPE string OPTIONAL
      iv_entity_set_name      TYPE string OPTIONAL
      iv_source_name          TYPE string OPTIONAL
      io_data_provider        TYPE REF TO zif_mgw_entry_provider
      it_key_tab              TYPE zoao_t_mgw_name_value_pair OPTIONAL
      it_navigation_path      TYPE zoao_t_mgw_navigation_path OPTIONAL
      io_tech_request_context TYPE REF TO zif_mgw_req_entity_c OPTIONAL
    EXPORTING
      er_entity               TYPE REF TO data
    RAISING
      zcx_mgw_busi_exception
      zcx_mgw_tech_exception.

  METHODS delete_entity
    IMPORTING
      iv_entity_name          TYPE string OPTIONAL
      iv_entity_set_name      TYPE string OPTIONAL
      iv_source_name          TYPE string OPTIONAL
      it_key_tab              TYPE zoao_t_mgw_name_value_pair OPTIONAL
      it_navigation_path      TYPE zoao_t_mgw_navigation_path OPTIONAL
      io_tech_request_context TYPE REF TO zif_mgw_req_entity_d OPTIONAL
    RAISING
      zcx_mgw_busi_exception
      zcx_mgw_tech_exception.

  METHODS get_entity
    IMPORTING
      iv_entity_name          TYPE string OPTIONAL
      iv_entity_set_name      TYPE string OPTIONAL
      iv_source_name          TYPE string OPTIONAL
      it_key_tab              TYPE zoao_t_mgw_name_value_pair OPTIONAL
      it_navigation_path      TYPE zoao_t_mgw_navigation_path OPTIONAL
      io_tech_request_context TYPE REF TO zif_mgw_req_entity OPTIONAL
    EXPORTING
      er_entity               TYPE REF TO data
      es_response_context     TYPE ty_s_mgw_response_entity_cntxt
    RAISING
      zcx_mgw_busi_exception
      zcx_mgw_tech_exception.

  METHODS get_entityset
    IMPORTING
      iv_entity_name           TYPE string OPTIONAL
      iv_entity_set_name       TYPE string OPTIONAL
      iv_source_name           TYPE string OPTIONAL
      it_filter_select_options TYPE zoao_t_mgw_select_option OPTIONAL
      it_order                 TYPE zoao_t_mgw_sorting_order OPTIONAL
      is_paging                TYPE zoao_s_mgw_paging OPTIONAL
      it_navigation_path       TYPE zoao_t_mgw_navigation_path OPTIONAL
      it_key_tab               TYPE zoao_t_mgw_name_value_pair OPTIONAL
      iv_filter_string         TYPE string OPTIONAL
      iv_search_string         TYPE string OPTIONAL
      io_tech_request_context  TYPE REF TO zif_mgw_req_entityset OPTIONAL
    EXPORTING
      er_entityset             TYPE REF TO data
      es_response_context      TYPE ty_s_mgw_response_context
    RAISING
      zcx_mgw_busi_exception
      zcx_mgw_tech_exception.

  METHODS update_entity
    IMPORTING
      iv_entity_name          TYPE string OPTIONAL
      iv_entity_set_name      TYPE string OPTIONAL
      iv_source_name          TYPE string OPTIONAL
      io_data_provider        TYPE REF TO zif_mgw_entry_provider
      it_key_tab              TYPE zoao_t_mgw_name_value_pair OPTIONAL
      it_navigation_path      TYPE zoao_t_mgw_navigation_path OPTIONAL
      io_tech_request_context TYPE REF TO zif_mgw_req_entity_u OPTIONAL
    EXPORTING
      er_entity               TYPE REF TO data
    RAISING
      zcx_mgw_busi_exception
      zcx_mgw_tech_exception.

ENDINTERFACE.