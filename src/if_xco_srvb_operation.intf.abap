INTERFACE if_xco_srvb_operation PUBLIC.
  METHODS:
    get_action
      RETURNING
        VALUE(ro_action) TYPE REF TO if_xco_dp_action,

    execute
      RETURNING
        VALUE(ro_action_result) TYPE REF TO if_xco_dp_action_result.
ENDINTERFACE.