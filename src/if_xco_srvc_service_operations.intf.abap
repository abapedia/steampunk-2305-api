INTERFACE if_xco_srvc_service_operations PUBLIC.
  METHODS:
    get
      IMPORTING
        io_version                   TYPE REF TO cl_xco_srvc_version OPTIONAL
        io_origin                    TYPE REF TO cl_xco_srvc_origin OPTIONAL
      RETURNING
        VALUE(rt_service_operations) TYPE if_xco_srvc_service_operation=>list.
ENDINTERFACE.