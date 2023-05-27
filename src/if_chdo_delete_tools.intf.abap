INTERFACE if_chdo_delete_tools
  PUBLIC.
  TYPES ty_count TYPE sy-dbcnt.
  TYPES ty_c_counter TYPE i.
  METHODS changedocument_delete
    IMPORTING
      !i_objectclass TYPE if_chdo_object_tools_rel=>ty_cdobjectcl
      !i_objectid TYPE cl_chdo_write_tools=>ty_cdobjectv OPTIONAL
      !i_up_to_date TYPE if_chdo_object_tools_rel=>ty_cddatum OPTIONAL
      !i_changenumber TYPE cl_chdo_write_tools=>ty_cdchangenr OPTIONAL
      !i_with_commit TYPE abap_bool OPTIONAL
      !i_commit_counter TYPE ty_c_counter OPTIONAL
    EXPORTING
      !e_number_of_deleted_headers TYPE ty_count
      !e_number_of_deleted_positions TYPE ty_count
      !e_number_of_deleted_uids TYPE ty_count
      !e_number_of_deleted_strings TYPE ty_count
    RAISING
      cx_chdo_delete_error.
ENDINTERFACE.