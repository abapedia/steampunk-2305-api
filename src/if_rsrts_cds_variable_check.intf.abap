INTERFACE if_rsrts_cds_variable_check
  PUBLIC.

  TYPES nt_periv TYPE periv.
  TYPES nt_date TYPE sy-datum.
  TYPES: BEGIN OF nt_s_range,
    sign TYPE c LENGTH 1,
    opt TYPE c LENGTH 2,
    low TYPE string,
    high TYPE string,
    END OF nt_s_range.
  TYPES:
    nt_t_range TYPE STANDARD TABLE OF nt_s_range WITH DEFAULT KEY.
  TYPES nt_s_msg TYPE not_released.
  TYPES:
    nt_t_msg TYPE STANDARD TABLE OF nt_s_msg WITH DEFAULT KEY.
  TYPES nt_objectname TYPE c LENGTH 30.
  TYPES:
    BEGIN OF ENUM nt_cdstype STRUCTURE n_c_cdstype,
           initial,
           parameter,
           element,
           user_input,
         END OF ENUM nt_cdstype STRUCTURE n_c_cdstype.
  TYPES:
    BEGIN OF nt_sx_value,
      cdsname TYPE c LENGTH 30,
      cdstype TYPE nt_cdstype,
      t_range TYPE nt_t_range,
    END OF nt_sx_value.
  TYPES:
    nt_thx_value TYPE HASHED TABLE OF nt_sx_value WITH UNIQUE KEY cdsname cdstype.
  TYPES:
    BEGIN OF nt_sx_msg,
      cdsname TYPE c LENGTH 30,
      cdstype TYPE nt_cdstype,
      t_msg   TYPE nt_t_msg,
    END OF nt_sx_msg.
  TYPES:
    nt_thx_msg TYPE HASHED TABLE OF nt_sx_msg WITH UNIQUE KEY cdsname cdstype.

  CLASS-METHODS get_instance
    IMPORTING
      !i_query_cds_viewname TYPE nt_objectname
      !i_provider_cds_viewname TYPE nt_objectname
    RETURNING
      VALUE(r_instance) TYPE REF TO if_rsrts_cds_variable_check
    RAISING
      cx_rs_not_found.
  METHODS check_variables
    IMPORTING
      !i_thx_value TYPE nt_thx_value
      !i_periv TYPE nt_periv
      !i_keydate TYPE nt_date
    EXPORTING
      !e_thx_msg_for_object TYPE nt_thx_msg
      !e_t_msg_general TYPE nt_t_msg.
ENDINTERFACE.