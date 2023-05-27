CLASS cl_xco_domain_o_local DEFINITION PUBLIC FINAL INHERITING FROM cl_xco_domain_origin CREATE PRIVATE.
  PUBLIC SECTION.
    INTERFACES:
      if_xco_domain_cacheable_origin FINAL METHODS enable_caching disable_caching.

    INTERFACES:
      if_xco_gen_doma_origin.

ENDCLASS.

CLASS cl_xco_domain_o_local IMPLEMENTATION.
ENDCLASS.