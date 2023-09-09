CLASS zcl_mgw_push_abs_data DEFINITION PUBLIC ABSTRACT CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES zif_mgw_core_srv_runtime.
    INTERFACES zif_mgw_conv_srv_runtime.
    INTERFACES zif_mgw_appl_srv_runtime.

    ALIASES copy_data_to_ref FOR zif_mgw_conv_srv_runtime~copy_data_to_ref.

  PROTECTED SECTION.
    DATA mo_context TYPE REF TO zif_mgw_context.

    METHODS check_subscription_authority
      IMPORTING
        is_subscription_data TYPE any
      RAISING
        zcx_mgw_busi_exception
        zcx_mgw_tech_exception.

ENDCLASS.

CLASS zcl_mgw_push_abs_data IMPLEMENTATION.

  METHOD zif_mgw_conv_srv_runtime~copy_data_to_ref.
    RETURN.
  ENDMETHOD.

  METHOD zif_mgw_conv_srv_runtime~get_logger.
    RETURN.
  ENDMETHOD.

  METHOD zif_mgw_appl_srv_runtime~create_entity.
    RETURN.
  ENDMETHOD.

  METHOD zif_mgw_appl_srv_runtime~delete_entity.
    RETURN.
  ENDMETHOD.

  METHOD zif_mgw_appl_srv_runtime~get_entity.
    RETURN.
  ENDMETHOD.

  METHOD zif_mgw_appl_srv_runtime~get_entityset.
    RETURN.
  ENDMETHOD.

  METHOD zif_mgw_appl_srv_runtime~update_entity.
    RETURN.
  ENDMETHOD.

  METHOD check_subscription_authority.
    RETURN.
  ENDMETHOD.

  METHOD zif_mgw_appl_srv_runtime~create_deep_entity.
    RETURN.
  ENDMETHOD.

  METHOD zif_mgw_appl_srv_runtime~get_stream.
    RETURN.
  ENDMETHOD.

  METHOD zif_mgw_appl_srv_runtime~update_stream.
    RETURN.
  ENDMETHOD.

  METHOD zif_mgw_core_srv_runtime~init.
    RETURN.
  ENDMETHOD.

  METHOD zif_mgw_conv_srv_runtime~get_message_container.
    RETURN.
  ENDMETHOD.

  METHOD zif_mgw_conv_srv_runtime~set_header.
    RETURN.
  ENDMETHOD.

ENDCLASS.