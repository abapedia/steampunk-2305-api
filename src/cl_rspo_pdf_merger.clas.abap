CLASS cl_rspo_pdf_merger DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.

    INTERFACES if_rspo_pdf_merger.

    ALIASES add_document
      FOR if_rspo_pdf_merger~add_document.
    ALIASES merge_documents
      FOR if_rspo_pdf_merger~merge_documents.

    CLASS-METHODS create_instance
      RETURNING
      VALUE(merger_instance) TYPE REF TO if_rspo_pdf_merger.
ENDCLASS.

CLASS cl_rspo_pdf_merger IMPLEMENTATION.
ENDCLASS.