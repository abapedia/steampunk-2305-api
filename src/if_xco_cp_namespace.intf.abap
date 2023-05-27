INTERFACE if_xco_cp_namespace PUBLIC.
  TYPES:
    tv_value TYPE char10.

  DATA:
    value TYPE tv_value READ-ONLY.

  METHODS:
    exists
      RETURNING
        VALUE(rv_exists) TYPE abap_bool,
    is_changeable
      RETURNING
        VALUE(rv_is_changeable) TYPE abap_bool.
ENDINTERFACE.