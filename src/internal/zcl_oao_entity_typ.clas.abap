CLASS zcl_oao_entity_typ DEFINITION PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_mgw_odata_entity_typ.

  PRIVATE SECTION.
    DATA mt_properties TYPE zif_mgw_med_odata_types=>ty_t_mgw_odata_properties.
ENDCLASS.

CLASS zcl_oao_entity_typ IMPLEMENTATION.

  METHOD zif_mgw_odata_entity_typ~create_entity_set.
    CREATE OBJECT ro_entity_set TYPE zcl_oao_entity_set.
  ENDMETHOD.

  METHOD zif_mgw_odata_entity_typ~bind_structure.
* todo ???
    RETURN.
  ENDMETHOD.

  METHOD zif_mgw_odata_entity_typ~create_property.
    DATA ls_row LIKE LINE OF mt_properties.

    CREATE OBJECT ro_property TYPE zcl_oao_property.

    ls_row-name = iv_property_name.
    ls_row-property = ro_property.
    INSERT ls_row INTO TABLE mt_properties.
  ENDMETHOD.

  METHOD zif_mgw_odata_entity_typ~get_property.
    ASSERT 1 = 'todo'.
  ENDMETHOD.

  METHOD zif_mgw_odata_entity_typ~get_properties.
    rt_properties = mt_properties.
  ENDMETHOD.

ENDCLASS.