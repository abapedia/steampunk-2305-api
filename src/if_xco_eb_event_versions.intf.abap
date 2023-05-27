INTERFACE if_xco_eb_event_versions PUBLIC.
  METHODS:
    get
      IMPORTING
        io_version               TYPE REF TO cl_xco_eb_version OPTIONAL
        io_origin                TYPE REF TO cl_xco_eb_origin OPTIONAL
      RETURNING
        VALUE(rt_event_versions) TYPE if_xco_eb_event_version=>list.
ENDINTERFACE.