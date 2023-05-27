INTERFACE if_rspo_pdf_merger
  PUBLIC.
  METHODS add_document
    IMPORTING
      !document TYPE xstring.
  METHODS merge_documents
    RETURNING
      VALUE(merged_document) TYPE xstring
    RAISING
      cx_rspo_pdf_merger.
ENDINTERFACE.