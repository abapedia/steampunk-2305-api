INTERFACE if_sadl_exit_sort_transform
  PUBLIC.
  TYPES BEGIN OF tx_contract.
  TYPES            map_element TYPE not_released.
  TYPES END OF   tx_contract.

  TYPES:
    BEGIN OF ts_sort_element,
      name    TYPE string,
      reverse TYPE abap_bool,
    END OF ts_sort_element.
  TYPES:
    tt_sort_elements TYPE STANDARD TABLE OF ts_sort_element WITH DEFAULT KEY.
  METHODS map_element IMPORTING !iv_entity        TYPE string
                                !iv_element       TYPE string
                      EXPORTING !et_sort_elements TYPE tt_sort_elements
                      RAISING   cx_sadl_exit.

ENDINTERFACE.