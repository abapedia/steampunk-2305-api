CLASS cl_abap_behv_aux DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    TYPES: BEGIN OF ENUM t_call_kind,
           call_unspecific VALUE IS INITIAL,
           call_ui         VALUE 1,
           call_webapi     VALUE 2,
         END OF ENUM t_call_kind.

    CLASS-METHODS get_current_handler_kind
      EXPORTING
      !root_entity TYPE abp_root_entity_name
      RETURNING
      VALUE(handler_kind) TYPE abp_behv_kind.
    CLASS-METHODS get_current_context
      EXPORTING
      !in_local_mode TYPE xsdboolean
      !draft_activate TYPE xsdboolean
      !for_permissions TYPE xsdboolean
      !from_projection TYPE abp_root_entity_name
      !from_interface TYPE abp_root_entity_name
      !privileged TYPE xsdboolean
      !call_kind TYPE t_call_kind.
ENDCLASS.

CLASS cl_abap_behv_aux IMPLEMENTATION.
ENDCLASS.