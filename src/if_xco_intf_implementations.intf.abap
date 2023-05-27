INTERFACE if_xco_intf_implementations PUBLIC.
  METHODS:
    get_names
      RETURNING
        VALUE(rt_names) TYPE sxco_t_ao_object_names,
    get
      RETURNING
        VALUE(rt_implementations) TYPE if_xco_ao_class=>list.
ENDINTERFACE.