INTERFACE if_xco_gen_ddls_template
  PUBLIC.

  METHODS get_implementation
    RETURNING
      VALUE(ro_implementation) TYPE REF TO object.
ENDINTERFACE.