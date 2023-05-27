INTERFACE if_xco_gen_drty_std_type PUBLIC.
  METHODS:
    get_implementation
      RETURNING
        VALUE(ro_implementation) TYPE REF TO object.
ENDINTERFACE.