CLASS cx_rspo_pdf_merger DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    INTERFACES if_t100_message.
    INTERFACES if_t100_dyn_msg.
    TYPES ty_error_code TYPE i.
    DATA error_code TYPE ty_error_code.
    DATA error_text TYPE string.
    DATA document_index TYPE i.
    METHODS constructor
    IMPORTING
      !textid LIKE if_t100_message=>t100key OPTIONAL
      !previous LIKE previous OPTIONAL
      !error_code TYPE ty_error_code OPTIONAL
      !error_text TYPE string OPTIONAL
      !document_index TYPE i OPTIONAL.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_rspo_pdf_merger IMPLEMENTATION.
ENDCLASS.