INTERFACE if_satc_api_run_configuration
  PUBLIC.
  TYPES ty_description TYPE c LENGTH 128.
  TYPES:
    BEGIN OF ENUM ty_behavior_for_pragmas STRUCTURE behavior_for_pragmas,
      suppress_findings,
      report_findings_as_unresolved,
      report_findings_as_exempted,
    END OF ENUM ty_behavior_for_pragmas STRUCTURE behavior_for_pragmas.
  METHODS get_object_set
    RETURNING VALUE(object_set) TYPE REF TO if_satc_object_set.
  METHODS get_check_variant
    RETURNING VALUE(check_variant) TYPE REF TO cl_satc_api_check_variant.
  METHODS get_description
    RETURNING VALUE(description) TYPE ty_description.
  METHODS get_behavior_for_pragmas
    RETURNING VALUE(behavior_for_pragmas) TYPE ty_behavior_for_pragmas.
  METHODS set_check_variant
    IMPORTING check_variant TYPE REF TO cl_satc_api_check_variant
    RETURNING VALUE(self) TYPE REF TO if_satc_api_run_configuration.
  METHODS set_description
    IMPORTING VALUE(description) TYPE ty_description
    RETURNING VALUE(self) TYPE REF TO if_satc_api_run_configuration.
  METHODS set_behavior_for_pragmas
    IMPORTING behavior_for_pragmas TYPE ty_behavior_for_pragmas
    RETURNING VALUE(self) TYPE REF TO if_satc_api_run_configuration.

ENDINTERFACE.