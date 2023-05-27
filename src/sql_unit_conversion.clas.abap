CLASS sql_unit_conversion DEFINITION
  PUBLIC
  ABSTRACT
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    TYPES:
      BEGIN OF ENUM on_error STRUCTURE c_on_error BASE TYPE i,
        fail             VALUE IS INITIAL,
        set_to_null      VALUE 1,
        keep_unconverted VALUE 2,
      END OF ENUM on_error STRUCTURE c_on_error.
ENDCLASS.

CLASS sql_unit_conversion IMPLEMENTATION.
ENDCLASS.