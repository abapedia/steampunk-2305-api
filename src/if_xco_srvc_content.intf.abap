INTERFACE if_xco_srvc_content PUBLIC.
  TYPES:
    BEGIN OF ts_content,
      short_description  TYPE if_xco_service_consumption_mdl=>tv_short_description,
      consumption_type   TYPE if_xco_service_consumption_mdl=>tv_consumption_type,
      service_definition TYPE REF TO if_xco_service_definition,
      proxy_class        TYPE REF TO if_xco_ao_class,
    END OF ts_content.

  DATA:
    service_consumption_model TYPE REF TO if_xco_service_consumption_mdl READ-ONLY,
    version                   TYPE REF TO cl_xco_srvc_version READ-ONLY.

  METHODS:
    get_short_description
      IMPORTING
        io_origin                   TYPE REF TO cl_xco_srvc_origin OPTIONAL
      RETURNING
        VALUE(rv_short_description) TYPE if_xco_service_consumption_mdl=>tv_short_description,
    get_consumption_type
      IMPORTING
        io_origin                  TYPE REF TO cl_xco_srvc_origin OPTIONAL
      RETURNING
        VALUE(ro_consumption_type) TYPE if_xco_service_consumption_mdl=>tv_consumption_type,
    get_service_definition
      IMPORTING
        io_origin                    TYPE REF TO cl_xco_srvc_origin OPTIONAL
      RETURNING
        VALUE(ro_service_definition) TYPE REF TO if_xco_service_definition,
    get_proxy_class
      IMPORTING
        io_origin             TYPE REF TO cl_xco_srvc_origin OPTIONAL
      RETURNING
        VALUE(ro_proxy_class) TYPE REF TO if_xco_ao_class,
    get
      IMPORTING
        io_origin         TYPE REF TO cl_xco_srvc_origin OPTIONAL
      RETURNING
        VALUE(rs_content) TYPE ts_content.
ENDINTERFACE.