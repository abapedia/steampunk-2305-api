INTERFACE if_xco_eb_cacheable_origin PUBLIC.
  METHODS:
    enable_caching
      IMPORTING
        iv_event_binding_name TYPE if_xco_event_binding=>tv_name OPTIONAL
        io_version            TYPE REF TO cl_xco_eb_version OPTIONAL,
    disable_caching
      IMPORTING
        iv_event_binding_name TYPE if_xco_event_binding=>tv_name OPTIONAL
        io_version            TYPE REF TO cl_xco_eb_version OPTIONAL.
ENDINTERFACE.