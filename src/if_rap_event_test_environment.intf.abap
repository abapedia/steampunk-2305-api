INTERFACE if_rap_event_test_environment
  PUBLIC.

  TYPES ty_entity_name       TYPE abp_entity_name.
  TYPES ty_entity_event_name TYPE c LENGTH 30.

  TYPES: BEGIN OF ty_event,
           entity_name TYPE abp_entity_name,
           event_name  TYPE c LENGTH 30,
         END OF ty_event,

         tt_event TYPE STANDARD TABLE OF ty_event WITH EMPTY KEY.

  TYPES: BEGIN OF ty_processed_event,
           event     TYPE not_released,
           timestamp TYPE timestampl,
         END OF ty_processed_event,
         tt_processed_event TYPE STANDARD TABLE OF ty_processed_event WITH EMPTY KEY.
  METHODS destroy.
  METHODS clear.
  METHODS get_event
    IMPORTING entity_name   TYPE ty_entity_name
              event_name    TYPE ty_entity_event_name
    RETURNING VALUE(double) TYPE REF TO if_rap_event_double_single.
  METHODS get_events
    RETURNING VALUE(double) TYPE REF TO if_rap_event_double_mass.

ENDINTERFACE.