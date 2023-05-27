INTERFACE if_xco_cp_gen_evtb_o_put_objct PUBLIC.
  DATA:
    name TYPE if_xco_event_binding=>tv_name READ-ONLY.

  METHODS:
    set_package
      IMPORTING
        iv_package   TYPE sxco_package
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_cp_gen_evtb_o_put_objct,
    create_form_specification
      RETURNING
        VALUE(ro_form_specification) TYPE REF TO if_xco_cp_gen_evtb_s_form,
    get_form_specification
      RETURNING
        VALUE(ro_form_specification) TYPE REF TO if_xco_cp_gen_evtb_s_form,
    delete_form_specification.
ENDINTERFACE.