INTERFACE if_xco_gen_bdef_s_fo_b_a_va_rf PUBLIC.
  METHODS:
    set_always
      IMPORTING
        iv_always    TYPE abap_bool DEFAULT abap_true
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_bdef_s_fo_b_a_va_rf,
    set_cds_entity
      IMPORTING
        iv_cds_entity TYPE sxco_cds_object_name
      RETURNING
        VALUE(ro_me)  TYPE REF TO if_xco_gen_bdef_s_fo_b_a_va_rf.
ENDINTERFACE.