INTERFACE if_xco_cp_gen_doma_d_o_patch_o PUBLIC.
  TYPES:
    list TYPE STANDARD TABLE OF REF TO if_xco_cp_gen_doma_d_o_patch_o WITH DEFAULT KEY.

  DATA:
    name TYPE sxco_ad_object_name READ-ONLY.

  METHODS:
    create_change_specification
      RETURNING
        VALUE(ro_change_specification) TYPE REF TO if_xco_cp_gen_doma_s_change,
    get_change_specification
      RETURNING
        VALUE(ro_change_specification) TYPE REF TO if_xco_cp_gen_doma_s_change,
    delete_change_specification.
ENDINTERFACE.