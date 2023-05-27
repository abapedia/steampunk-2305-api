INTERFACE if_xco_dp_action_result PUBLIC.
  INTERFACES:
    if_xco_news.

  DATA:
    succeeded TYPE abap_bool READ-ONLY,
    messages  TYPE sxco_t_messages READ-ONLY.
ENDINTERFACE.