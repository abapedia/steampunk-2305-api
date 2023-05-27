INTERFACE if_xco_srvc_remote_functions PUBLIC.
  METHODS:
    get
      IMPORTING
        io_version                 TYPE REF TO cl_xco_srvc_version OPTIONAL
        io_origin                  TYPE REF TO cl_xco_srvc_origin OPTIONAL
      RETURNING
        VALUE(rt_remote_functions) TYPE if_xco_srvc_remote_function=>list.
ENDINTERFACE.