INTERFACE if_xco_srvb_cacheable_origin PUBLIC.
  METHODS:
    enable_caching
      IMPORTING
        iv_service_binding_name TYPE if_xco_service_binding=>tv_name OPTIONAL
        io_version              TYPE REF TO cl_xco_srvb_version OPTIONAL,
    disable_caching
      IMPORTING
        iv_service_binding_name TYPE if_xco_service_binding=>tv_name OPTIONAL
        io_version              TYPE REF TO cl_xco_srvb_version OPTIONAL.
ENDINTERFACE.