CLASS xco_cp_system DEFINITION PUBLIC FINAL CREATE PRIVATE.
  PUBLIC SECTION.
    CLASS-DATA:
      software_component    TYPE REF TO if_xco_cp_software_component_f READ-ONLY,
      application_component TYPE REF TO if_xco_cp_application_cpnt_fct READ-ONLY,
      namespace             TYPE REF TO if_xco_cp_namespace_factory READ-ONLY,
      languages             TYPE REF TO if_xco_cp_sys_api_languages READ-ONLY.

    CLASS-METHODS:
      user
        IMPORTING
          iv_name        TYPE sxco_user_name
        RETURNING
          VALUE(ro_user) TYPE REF TO if_xco_cp_user.
ENDCLASS.

CLASS xco_cp_system IMPLEMENTATION.
ENDCLASS.