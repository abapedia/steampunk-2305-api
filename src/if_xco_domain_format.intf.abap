INTERFACE if_xco_domain_format PUBLIC.
  TYPES:
    list TYPE STANDARD TABLE OF REF TO if_xco_domain_format WITH DEFAULT KEY.

  INTERFACES:
    if_xco_printable,

    if_xco_gen_doma_format.

  METHODS:
    is_built_in_type DEFAULT IGNORE
      RETURNING
        VALUE(rv_is_built_in_type) TYPE abap_bool,
    get_built_in_type DEFAULT IGNORE
      RETURNING
        VALUE(ro_built_in_type) TYPE REF TO cl_xco_ad_built_in_type.
ENDINTERFACE.