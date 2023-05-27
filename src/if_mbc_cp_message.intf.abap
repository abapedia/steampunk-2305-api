INTERFACE if_mbc_cp_message
  PUBLIC.
  METHODS:
    get_item_copied
      IMPORTING severity      TYPE if_abap_behv_message=>t_severity DEFAULT if_abap_behv_message=>severity-success
      RETURNING VALUE(result) TYPE REF TO if_abap_behv_message,
    get_item_deprecated
      IMPORTING severity      TYPE if_abap_behv_message=>t_severity DEFAULT if_abap_behv_message=>severity-warning
      RETURNING VALUE(result) TYPE REF TO if_abap_behv_message,
    get_item_invalidated
      IMPORTING severity      TYPE if_abap_behv_message=>t_severity DEFAULT if_abap_behv_message=>severity-warning
      RETURNING VALUE(result) TYPE REF TO if_abap_behv_message,
    get_select_only_one_entry DEFAULT FAIL
      IMPORTING severity      TYPE if_abap_behv_message=>t_severity DEFAULT if_abap_behv_message=>severity-error
      RETURNING VALUE(result) TYPE REF TO if_abap_behv_message.
ENDINTERFACE.