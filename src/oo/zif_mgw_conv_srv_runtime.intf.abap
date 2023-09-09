INTERFACE zif_mgw_conv_srv_runtime PUBLIC.
  METHODS get_message_container
    RETURNING
      VALUE(container) TYPE REF TO zif_message_container.

  METHODS set_header
    IMPORTING
      value TYPE any.

  METHODS get_logger
    RETURNING
      VALUE(ro_logger) TYPE REF TO zcl_cos_logger.

  METHODS copy_data_to_ref
    IMPORTING
      is_data TYPE any
    CHANGING
      cr_data TYPE REF TO data.
ENDINTERFACE.