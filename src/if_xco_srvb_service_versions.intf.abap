INTERFACE if_xco_srvb_service_versions PUBLIC.
  METHODS:
    get
      IMPORTING
        io_version         TYPE REF TO cl_xco_srvb_version OPTIONAL
        io_origin          TYPE REF TO cl_xco_srvb_origin OPTIONAL
      RETURNING
        VALUE(rt_versions) TYPE sxco_t_srvb_service_versions.
ENDINTERFACE.