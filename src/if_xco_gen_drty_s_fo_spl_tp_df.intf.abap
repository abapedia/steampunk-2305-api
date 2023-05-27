INTERFACE if_xco_gen_drty_s_fo_spl_tp_df PUBLIC.
  INTERFACES:
    if_xco_gen_cds_s_fo_ann_target.

  ALIASES:
    add_annotation FOR if_xco_gen_cds_s_fo_ann_target~add_annotation,

    remove_annotation FOR if_xco_gen_cds_s_fo_ann_target~remove_annotation.

  METHODS:
    set_type
      IMPORTING
        io_type      TYPE REF TO if_xco_gen_drty_std_type
      RETURNING
        VALUE(ro_me) TYPE REF TO if_xco_gen_drty_s_fo_spl_tp_df.
ENDINTERFACE.