INTERFACE if_xco_gen_bdef_s_fo_b_event
  PUBLIC.

  TYPES:
    tv_name TYPE c LENGTH 30.

  DATA name TYPE tv_name READ-ONLY.
  DATA parameter TYPE REF TO if_xco_gen_bdef_s_fo_b_e_param READ-ONLY.
ENDINTERFACE.