INTERFACE if_mail_address
  PUBLIC.

  METHODS:
    validate
      RETURNING VALUE(rv_address_valid) TYPE abap_bool.

ENDINTERFACE.