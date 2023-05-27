INTERFACE if_xco_aps_components PUBLIC.
  TYPES:
    tt_names TYPE STANDARD TABLE OF sxco_ad_field_name WITH EMPTY KEY.

  METHODS:
    get_names
      IMPORTING
        io_read_state   TYPE REF TO cl_xco_ad_object_read_state OPTIONAL
        io_origin       TYPE REF TO cl_xco_tab_origin OPTIONAL
          PREFERRED PARAMETER io_read_state
      RETURNING
        VALUE(rt_names) TYPE tt_names,
    get
      IMPORTING
        io_read_state        TYPE REF TO cl_xco_ad_object_read_state OPTIONAL
        io_origin            TYPE REF TO cl_xco_tab_origin OPTIONAL
          PREFERRED PARAMETER io_read_state
      RETURNING
        VALUE(rt_components) TYPE sxco_t_aps_components.
ENDINTERFACE.