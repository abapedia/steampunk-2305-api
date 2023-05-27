INTERFACE if_xco_srvb_services PUBLIC.
  METHODS:
    get
      IMPORTING
        io_version         TYPE REF TO cl_xco_srvb_version OPTIONAL
        io_origin          TYPE REF TO cl_xco_srvb_origin OPTIONAL
      RETURNING
        VALUE(rt_services) TYPE sxco_t_srvb_services.
ENDINTERFACE.