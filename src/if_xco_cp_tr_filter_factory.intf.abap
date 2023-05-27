INTERFACE if_xco_cp_tr_filter_factory PUBLIC.
  METHODS:
    kind
      IMPORTING
        io_kind        TYPE REF TO cl_xco_tr_kind
      RETURNING
        VALUE(ro_kind) TYPE REF TO if_xco_tr_filter,
    type
      IMPORTING
        io_type        TYPE REF TO cl_xco_tr_type
      RETURNING
        VALUE(ro_type) TYPE REF TO if_xco_tr_filter,
    status
      IMPORTING
        io_status        TYPE REF TO cl_xco_tr_status
      RETURNING
        VALUE(ro_status) TYPE REF TO if_xco_tr_filter,
    owner
      IMPORTING
        io_constraint   TYPE REF TO cl_xco_asql_constraint
      RETURNING
        VALUE(ro_owner) TYPE REF TO if_xco_tr_filter,
    request
      IMPORTING
        io_constraint     TYPE REF TO cl_xco_asql_constraint
      RETURNING
        VALUE(ro_request) TYPE REF TO if_xco_tr_filter,
    request_type
      IMPORTING
        io_type                TYPE REF TO cl_xco_tr_type
      RETURNING
        VALUE(ro_request_type) TYPE REF TO if_xco_tr_filter,
    request_target
      IMPORTING
        io_constraint           TYPE REF TO cl_xco_asql_constraint
      RETURNING
        VALUE(ro_requet_target) TYPE REF TO if_xco_tr_filter,
    attribute
      IMPORTING
        io_name_constraint  TYPE REF TO cl_xco_asql_constraint
        io_value_constraint TYPE REF TO cl_xco_asql_constraint OPTIONAL
      RETURNING
        VALUE(ro_attribute) TYPE REF TO if_xco_tr_filter.
ENDINTERFACE.