INTERFACE if_xco_cp_gen_dtel_s_ch_update PUBLIC.
  TYPES:
    tv_short_description TYPE c LENGTH 60,
    BEGIN OF ts_field_label,
      " The short field label.
      short   TYPE REF TO if_xco_gen_dtel_s_ch_up_fld_lb,
      medium  TYPE REF TO if_xco_gen_dtel_s_ch_up_fld_lb,
      long    TYPE REF TO if_xco_gen_dtel_s_ch_up_fld_lb,
      heading TYPE REF TO if_xco_gen_dtel_s_ch_up_fld_lb,
    END OF ts_field_label.

  DATA:
    field_label TYPE ts_field_label READ-ONLY.

  METHODS:
    set_short_description
      IMPORTING
        iv_short_description TYPE tv_short_description
      RETURNING
        VALUE(ro_me)         TYPE REF TO if_xco_cp_gen_dtel_s_ch_update,
    set_data_type
      IMPORTING
        io_data_type TYPE REF TO if_xco_gen_dtel_data_type
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_cp_gen_dtel_s_ch_update.
ENDINTERFACE.