INTERFACE if_xco_gen_dtel_origin PUBLIC.
  METHODS:
    get_implementation
      RETURNING
        VALUE(ro_implementation) TYPE REF TO object.
ENDINTERFACE.