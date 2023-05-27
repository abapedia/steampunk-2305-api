CLASS cl_satc_api_check_variant DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.
    METHODS get_name
      RETURNING VALUE(name) TYPE if_satc_api_factory=>ty_check_variant_name.
ENDCLASS.

CLASS cl_satc_api_check_variant IMPLEMENTATION.
ENDCLASS.