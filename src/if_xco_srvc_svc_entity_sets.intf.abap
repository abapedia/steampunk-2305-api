INTERFACE if_xco_srvc_svc_entity_sets PUBLIC.
  METHODS:
    get
      IMPORTING
        io_version                    TYPE REF TO cl_xco_srvc_version OPTIONAL
        io_origin                     TYPE REF TO cl_xco_srvc_origin OPTIONAL
      RETURNING
        VALUE(rt_service_entity_sets) TYPE if_xco_srvc_svc_entity_set=>list.
ENDINTERFACE.