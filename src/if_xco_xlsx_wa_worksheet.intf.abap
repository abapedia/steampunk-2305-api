INTERFACE if_xco_xlsx_wa_worksheet PUBLIC.
  METHODS:
    exists
      RETURNING
        VALUE(rv_exists) TYPE abap_bool,

    set_name
      IMPORTING
        iv_name      TYPE string
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_xlsx_wa_worksheet,
    cursor
      IMPORTING
        io_column        TYPE REF TO cl_xco_xlsx_coordinate
        io_row           TYPE REF TO cl_xco_xlsx_coordinate
      RETURNING
        VALUE(ro_cursor) TYPE REF TO if_xco_xlsx_wa_cursor,
    select
      IMPORTING
        io_pattern          TYPE REF TO if_xco_xlsx_slc_pattern
      RETURNING
        VALUE(ro_selection) TYPE REF TO if_xco_xlsx_wa_selection.
ENDINTERFACE.