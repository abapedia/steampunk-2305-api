INTERFACE if_aps_bc_scope_change_api
  PUBLIC.

  TYPES:
    BEGIN OF ts_tadir_key,
      pgmid    TYPE c LENGTH 4,
      object   TYPE c LENGTH 4,
      obj_name TYPE c LENGTH 40,
    END OF ts_tadir_key.
  TYPES:
    tt_tadir_key TYPE SORTED TABLE OF ts_tadir_key WITH UNIQUE KEY pgmid object obj_name.
  TYPES tv_tadir_object TYPE c LENGTH 4.
  TYPES:
    tt_tadir_object_sorted TYPE SORTED TABLE OF tv_tadir_object WITH UNIQUE KEY table_line.
  TYPES:
    BEGIN OF ts_object_scope.
      INCLUDE TYPE ts_tadir_key AS tadir_key.
  TYPES    scope_state TYPE c.
  TYPES  END OF ts_object_scope.
  TYPES:
    tt_object_scope_sorted TYPE SORTED TABLE OF ts_object_scope WITH UNIQUE KEY tadir_key.
  TYPES:
    BEGIN OF ts_object_result.
      INCLUDE TYPE ts_tadir_key AS tadir_key.
  TYPES    scope_state_changed TYPE abap_bool.
  TYPES    scope_state         TYPE c.
  TYPES    message             TYPE bapirettab.
  TYPES  END OF ts_object_result.
  TYPES:
    tt_object_result_sorted TYPE SORTED TABLE OF ts_object_result WITH UNIQUE KEY tadir_key.
  METHODS scope
    IMPORTING
      !it_object_scope  TYPE tt_object_scope_sorted
      !iv_simulate      TYPE abap_bool
      !iv_force         TYPE abap_bool DEFAULT abap_false
    EXPORTING
      !et_object_result TYPE tt_object_result_sorted
      !et_message       TYPE bapirettab.
ENDINTERFACE.