INTERFACE if_xco_cp_ar_ront_oc_factory PUBLIC.
  DATA:
    all TYPE REF TO if_xco_ar_ront_object_class READ-ONLY.

  METHODS:
    where
      IMPORTING
        it_filters      TYPE sxco_t_ar_filters
      RETURNING
        VALUE(ro_where) TYPE REF TO if_xco_ar_ront_object_class.
ENDINTERFACE.