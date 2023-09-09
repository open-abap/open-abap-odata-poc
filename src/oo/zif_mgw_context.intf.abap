INTERFACE zif_mgw_context PUBLIC.
  METHODS get_logger
    RETURNING
      VALUE(ro_logger) TYPE REF TO zcl_cos_logger.
ENDINTERFACE.