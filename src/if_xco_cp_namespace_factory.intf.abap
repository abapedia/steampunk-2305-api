INTERFACE if_xco_cp_namespace_factory PUBLIC.
  METHODS:
    for
      IMPORTING
        iv_value            TYPE if_xco_cp_namespace=>tv_value
      RETURNING
        VALUE(ro_namespace) TYPE REF TO if_xco_cp_namespace.
ENDINTERFACE.