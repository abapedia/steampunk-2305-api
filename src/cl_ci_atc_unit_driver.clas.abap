CLASS cl_ci_atc_unit_driver DEFINITION
  PUBLIC FOR TESTING
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.
    TYPES ty_class_name TYPE c LENGTH 30.
    TYPES ty_method_name TYPE c LENGTH 61.
    TYPES:
      BEGIN OF ty_method_identifier,
      class TYPE ty_class_name,
      method TYPE ty_method_name,
      END OF ty_method_identifier.
    TYPES:
      BEGIN OF ENUM ty_class_section_kind STRUCTURE class_section_kind,
      public,
      protected,
      private,
      END OF ENUM ty_class_section_kind STRUCTURE class_section_kind.
    TYPES:
      BEGIN OF ty_class_section_identifier,
      class TYPE ty_class_name,
      kind TYPE ty_class_section_kind,
      END OF ty_class_section_identifier.
    CLASS-METHODS create_asserter
      RETURNING VALUE(asserter) TYPE REF TO if_ci_atc_unit_asserter.
    CLASS-METHODS get_method_object
      IMPORTING method TYPE ty_method_identifier
      RETURNING VALUE(method_object) TYPE if_ci_atc_check=>ty_object.
    CLASS-METHODS get_class_section_object
      IMPORTING section TYPE ty_class_section_identifier
      RETURNING VALUE(section_object) TYPE if_ci_atc_check=>ty_object.
ENDCLASS.

CLASS cl_ci_atc_unit_driver IMPLEMENTATION.
ENDCLASS.