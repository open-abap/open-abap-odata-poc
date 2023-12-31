INTERFACE zif_mgw_med_odata_types PUBLIC.

  TYPES ty_e_med_entity_name TYPE zoao_med_external_name.

  TYPES ty_e_med_internal_name TYPE c LENGTH 40.

  TYPES: BEGIN OF ty_s_mgw_odata_property,
           external_name TYPE zoao_med_external_name,
           name          TYPE ty_e_med_internal_name,
           property      TYPE REF TO zif_mgw_odata_property,
         END OF ty_s_mgw_odata_property.
  TYPES ty_t_mgw_odata_properties TYPE STANDARD TABLE OF ty_s_mgw_odata_property WITH DEFAULT KEY.

  TYPES ty_e_med_edm_type TYPE c LENGTH 20.
  CONSTANTS: BEGIN OF gcs_edm_data_types,
               string TYPE ty_e_med_edm_type VALUE 'Edm.String',
             END OF gcs_edm_data_types.

ENDINTERFACE.