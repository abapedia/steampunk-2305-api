INTERFACE if_xco_cp_gen_dtel_o_patch_sct PUBLIC.
  METHODS:
    add_object
      IMPORTING
        iv_name          TYPE sxco_ad_object_name
      RETURNING
        VALUE(ro_object) TYPE REF TO if_xco_cp_gen_dtel_d_o_patch_o,
    get_object
      IMPORTING
        iv_name          TYPE sxco_ad_object_name
      RETURNING
        VALUE(ro_object) TYPE REF TO if_xco_cp_gen_dtel_d_o_patch_o,
    remove_object
      IMPORTING
        iv_name TYPE sxco_ad_object_name.
ENDINTERFACE.