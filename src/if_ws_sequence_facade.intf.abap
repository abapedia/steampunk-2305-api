INTERFACE if_ws_sequence_facade
  PUBLIC.

  METHODS begin_eoio_sequence
    RAISING
    cx_ws_protocol_error.

  METHODS end_eoio_sequence
    RAISING
    cx_ws_protocol_error.

ENDINTERFACE.