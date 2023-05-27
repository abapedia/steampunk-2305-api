INTERFACE if_rfc_dest
  PUBLIC.

  TYPES BEGIN OF tx_contract.
  TYPES            get_destination_name TYPE not_released.
  TYPES            close_connection TYPE not_released.
  TYPES            reset_connection TYPE not_released.
  TYPES END OF   tx_contract.

  METHODS get_destination_name
    RETURNING
      VALUE(r_dest_name) TYPE rfcdest
    RAISING
      cx_rfc_dest_provider_error.
  METHODS close_connection
    RAISING
      cx_rfc_dest_provider_error.
  METHODS reset_connection
    RAISING
      cx_rfc_dest_provider_error.
ENDINTERFACE.