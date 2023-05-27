INTERFACE if_xco_srvc_svc_entity_set_co PUBLIC.
  TYPES:
    BEGIN OF ts_content,
      etag_support        TYPE if_xco_srvc_svc_entity_set=>tv_etag_support,
      data_definition     TYPE REF TO if_xco_data_definition,
      behavior_definition TYPE REF TO if_xco_behavior_definition,
    END OF ts_content.

  DATA:
    service_entity_set TYPE REF TO if_xco_srvc_svc_entity_set READ-ONLY,
    version            TYPE REF TO cl_xco_srvc_version READ-ONLY.

  METHODS:
    get_etag_support
      IMPORTING
        io_origin              TYPE REF TO cl_xco_srvc_origin OPTIONAL
      RETURNING
        VALUE(rv_etag_support) TYPE if_xco_srvc_svc_entity_set=>tv_etag_support,
    get_data_definition
      IMPORTING
        io_origin                 TYPE REF TO cl_xco_srvc_origin OPTIONAL
      RETURNING
        VALUE(ro_data_definition) TYPE REF TO if_xco_data_definition,
    get_behavior_definition
      IMPORTING
        io_origin                     TYPE REF TO cl_xco_srvc_origin OPTIONAL
      RETURNING
        VALUE(ro_behavior_definition) TYPE REF TO if_xco_behavior_definition,
    get
      IMPORTING
        io_origin         TYPE REF TO cl_xco_srvc_origin OPTIONAL
      RETURNING
        VALUE(rs_content) TYPE ts_content.
ENDINTERFACE.