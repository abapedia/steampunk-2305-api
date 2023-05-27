INTERFACE if_rsrts_cds_read
  PUBLIC.

  TYPES nt_bool TYPE c.
  TYPES nt_objectname TYPE c LENGTH 30.
  TYPES:
    BEGIN OF ts_properties,
      no_support_of_sel_cond TYPE c,    " = rs_s_dta-svrestrno
      allow_complex_sel_cond TYPE c,    " = not rs_s_dta-svrestrglobal
      provide_sorted_data TYPE c,       " = rs_s_dta-datasorted
      provide_exact_data TYPE c,        " = rs_s_dta-datatrusted
    END OF ts_properties.
  TYPES:
    BEGIN OF ts_range,
      fieldname  TYPE c LENGTH 30,
      sign       TYPE c,
      compop     TYPE c LENGTH 2,
      low        TYPE string,
      high       TYPE string,
    END OF ts_range.
  TYPES:
    tt_range TYPE STANDARD TABLE OF ts_range
                  WITH NON-UNIQUE KEY fieldname.
  TYPES:
    ttx_range TYPE STANDARD TABLE OF tt_range WITH DEFAULT KEY.
  TYPES:
    BEGIN OF ts_dimension,
      fieldname TYPE c LENGTH 30,
      alias     TYPE c LENGTH 30,
      orderby   TYPE i,
    END OF ts_dimension.
  TYPES:
    tth_dimension TYPE HASHED TABLE OF ts_dimension
                       WITH UNIQUE KEY fieldname INITIAL SIZE 10.
  TYPES:
    BEGIN OF ts_measure,
      fieldname TYPE c LENGTH 30,
      alias     TYPE c LENGTH 30,
      aggregation TYPE c LENGTH 3,
    END OF ts_measure.
  TYPES:
    tth_measure TYPE HASHED TABLE OF ts_measure
                     WITH UNIQUE KEY fieldname INITIAL SIZE 10.
  TYPES:
    BEGIN OF ts_hierarchy,
      fieldname TYPE c LENGTH 30,
      hieid     TYPE c LENGTH 25,
      hierarchy_name TYPE string,
    END OF ts_hierarchy.
  TYPES:
    tth_hierarchy TYPE HASHED TABLE OF ts_hierarchy
                       WITH UNIQUE KEY fieldname.

  CONSTANTS n_c_false TYPE nt_bool VALUE ' ' ##NO_TEXT.
  CONSTANTS n_c_true TYPE nt_bool VALUE 'X' ##NO_TEXT.

  CLASS-METHODS get_properties
    IMPORTING
      !i_cds_viewname TYPE nt_objectname
    RETURNING
      VALUE(r_s_properties) TYPE ts_properties.
  METHODS define
    IMPORTING
      !i_cds_viewname TYPE nt_objectname
      !i_th_selected_dimension TYPE tth_dimension
      !i_th_selected_measure TYPE tth_measure
      !i_t_range TYPE tt_range
      !i_ttx_range_tab TYPE ttx_range
      !i_keydate TYPE sy-datum DEFAULT sy-datum
      !i_maxrows TYPE i
      !i_th_additional_dimension TYPE tth_dimension
      !i_th_used_hierarchy TYPE tth_hierarchy.
  METHODS read
    IMPORTING
      !i_packagesize TYPE i DEFAULT 100000
      !i_show_statement TYPE nt_bool DEFAULT n_c_false
    EXPORTING
      !e_end_of_data TYPE nt_bool
      !e_t_data TYPE STANDARD TABLE
    RAISING
      cx_rs_vcube_read_error.
ENDINTERFACE.