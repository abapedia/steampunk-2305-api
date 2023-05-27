CLASS cl_rap_event_test_environment DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE FOR TESTING.

  PUBLIC SECTION.
    INTERFACES if_rap_event_test_environment.
    CLASS-METHODS create
      IMPORTING it_events_of_interest            TYPE if_rap_event_test_environment=>tt_event OPTIONAL
      RETURNING VALUE(ro_event_test_environment) TYPE REF TO if_rap_event_test_environment.

ENDCLASS.

CLASS cl_rap_event_test_environment IMPLEMENTATION.
ENDCLASS.