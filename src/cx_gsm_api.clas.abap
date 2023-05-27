CLASS cx_gsm_api DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    INTERFACES if_t100_message.
    INTERFACES if_t100_dyn_msg.

    DATA mv_username TYPE string.
    DATA mv_context TYPE string READ-ONLY.
    DATA mv_message TYPE string READ-ONLY.

    METHODS constructor
    IMPORTING
      !io_previous LIKE previous OPTIONAL
      !iv_username TYPE string OPTIONAL
      !iv_context TYPE string OPTIONAL
      !iv_message TYPE string OPTIONAL
      !iv_msgid TYPE symsgid OPTIONAL
      !iv_msgno TYPE symsgno OPTIONAL
      !iv_msgv1 TYPE string OPTIONAL
      !iv_msgv2 TYPE string OPTIONAL
      !iv_msgv3 TYPE string OPTIONAL
      !iv_msgv4 TYPE string OPTIONAL
      !iv_callstack_skip TYPE i DEFAULT 1.
    CLASS-METHODS cast
    IMPORTING
      !io_exception TYPE REF TO cx_root
      !iv_context TYPE string OPTIONAL
    RETURNING
      VALUE(ro_exception) TYPE REF TO cx_gsm_api
    RAISING
      cx_gsm_api.
    CLASS-METHODS raise_exception
    IMPORTING
      !io_exception TYPE REF TO cx_root OPTIONAL
      !iv_context TYPE string OPTIONAL
    RAISING
      cx_gsm_api.
    CLASS-METHODS raise
    IMPORTING
      !io_previous LIKE previous OPTIONAL
      !iv_username TYPE string OPTIONAL
      !iv_context TYPE string OPTIONAL
      !iv_msgid TYPE symsgid OPTIONAL
      !iv_msgno TYPE symsgno OPTIONAL
      !iv_msgv1 TYPE string OPTIONAL
      !iv_msgv2 TYPE string OPTIONAL
      !iv_msgv3 TYPE string OPTIONAL
      !iv_msgv4 TYPE string OPTIONAL
    RAISING
      cx_gsm_api.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_gsm_api IMPLEMENTATION.
ENDCLASS.