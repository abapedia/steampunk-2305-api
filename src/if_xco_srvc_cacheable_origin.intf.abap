INTERFACE if_xco_srvc_cacheable_origin PUBLIC.
  METHODS:
    enable_caching
      IMPORTING
        iv_service_consmptn_model_name TYPE if_xco_service_consumption_mdl=>tv_name OPTIONAL
        io_version                     TYPE REF TO cl_xco_srvc_version OPTIONAL,
    disable_caching
      IMPORTING
        iv_service_consmptn_model_name TYPE if_xco_service_consumption_mdl=>tv_name OPTIONAL
        io_version                     TYPE REF TO cl_xco_srvc_version OPTIONAL.
ENDINTERFACE.