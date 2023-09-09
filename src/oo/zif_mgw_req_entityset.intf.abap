INTERFACE zif_mgw_req_entityset PUBLIC.

  METHODS get_entity_set_name
    RETURNING
      VALUE(rv_entity_set) TYPE zoao_mgw_tech_name.

ENDINTERFACE.