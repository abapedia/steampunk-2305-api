INTERFACE if_chdo_enhancements
  PUBLIC.

  TYPES:
    BEGIN OF ts_return_auth.
  TYPES individual TYPE abap_bool. "X = authorization only for this individual objectid
  TYPES all TYPE abap_bool.        "X = authorization for the whole change document object
                                           "    the objectid is not relevant to determine the authorization
  TYPES END OF ts_return_auth.

  CLASS-METHODS authority_check DEFAULT IGNORE
    IMPORTING
      !iv_objectclass TYPE if_chdo_object_tools_rel=>ty_cdobjectcl
      !iv_objectid TYPE cl_chdo_read_tools=>tt_r_objectid OPTIONAL
    RETURNING
      VALUE(rv_is_authorized) TYPE abap_bool.
  CLASS-METHODS check_authorization_for_delete DEFAULT IGNORE
    IMPORTING
      !iv_objectclass TYPE if_chdo_object_tools_rel=>ty_cdobjectcl
      !iv_objectid TYPE cl_chdo_write_tools=>ty_cdobjectv OPTIONAL
    RETURNING
      VALUE(rv_is_authorized) TYPE ts_return_auth.
ENDINTERFACE.