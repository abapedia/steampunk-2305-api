INTERFACE if_xco_srvb_service_version_co PUBLIC.
  TYPES:
    BEGIN OF ts_content,
      service_definition TYPE REF TO if_xco_service_definition,
    END OF ts_content.

  DATA:
    service_version TYPE REF TO if_xco_srvb_service_version READ-ONLY,
    version         TYPE REF TO cl_xco_srvb_version READ-ONLY.

  METHODS:
    get_service_definition
      IMPORTING
        io_origin                    TYPE REF TO cl_xco_srvb_origin OPTIONAL
      RETURNING
        VALUE(ro_service_definition) TYPE REF TO if_xco_service_definition,
    get
      IMPORTING
        io_origin         TYPE REF TO cl_xco_srvb_origin OPTIONAL
      RETURNING
        VALUE(rs_content) TYPE ts_content.
ENDINTERFACE.