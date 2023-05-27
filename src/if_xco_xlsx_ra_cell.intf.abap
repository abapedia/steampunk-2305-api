INTERFACE if_xco_xlsx_ra_cell PUBLIC.
  METHODS:
    has_error
      RETURNING
        VALUE(rv_has_error) TYPE abap_bool,
    has_value
      RETURNING
        VALUE(rv_has_value) TYPE abap_bool,
    get_value
      RETURNING
        VALUE(ro_value) TYPE REF TO if_xco_xlsx_ra_cell_value.
ENDINTERFACE.