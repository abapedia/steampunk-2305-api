CLASS cl_xco_tab_o_local DEFINITION PUBLIC FINAL INHERITING FROM cl_xco_tab_origin CREATE PRIVATE.
  PUBLIC SECTION.
    INTERFACES:
      if_xco_tab_cacheable_origin FINAL METHODS enable_caching disable_caching.

    INTERFACES:
      if_xco_gen_tabl_origin.

ENDCLASS.

CLASS cl_xco_tab_o_local IMPLEMENTATION.
ENDCLASS.