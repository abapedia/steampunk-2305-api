INTERFACE if_mbc_cp_app_configuration
  PUBLIC.
  CONSTANTS:
    BEGIN OF list_variant_management,
      page  TYPE string VALUE 'foobar',
      none  TYPE string VALUE 'foobar',
    END OF list_variant_management,
    BEGIN OF page_variant_management,
      control  TYPE string VALUE 'foobar',
      none     TYPE string VALUE 'foobar',
    END OF page_variant_management,
    BEGIN OF selection_mode,
      auto    TYPE string VALUE 'foobar',
      multi   TYPE string VALUE 'foobar',
      single  TYPE string VALUE 'foobar',
      none    TYPE string VALUE 'foobar',
    END OF selection_mode,
    BEGIN OF table_type,
      responsive_table  TYPE string VALUE 'foobar',
      grid_table        TYPE string VALUE 'foobar',
    END OF table_type,
    BEGIN OF section_layout,
      page  TYPE string VALUE 'foobar',
      tabs  TYPE string VALUE 'foobar',
    END OF section_layout,
    BEGIN OF creation_mode_name,
      new_page      TYPE string VALUE 'foobar',
      inline        TYPE string VALUE 'foobar',
      creation_row  TYPE string VALUE 'foobar',
    END OF creation_mode_name,
    BEGIN OF initial_load,
      enabled   TYPE string VALUE 'foobar',
      disabled  TYPE string VALUE 'foobar',
      auto      TYPE string VALUE 'foobar',
    END OF initial_load,
    BEGIN OF row_count_mode,
      auto         TYPE string VALUE 'foobar',
      fixed        TYPE string VALUE 'foobar',
    END OF row_count_mode.
  TYPES:
    personalization TYPE not_released,
    creation_mode   TYPE not_released,
    BEGIN OF object_page,
      entity                  TYPE string,
      "object page settings
      editable_header_content TYPE abap_bool,
      sectionlayout           TYPE string,
      "table settings
      condensed_table_layout  TYPE abap_bool,
      disable_paste           TYPE abap_bool,
      enable_full_screen      TYPE abap_bool,
      type                    TYPE not_released,
      personalization         TYPE personalization,
      creation_mode           TYPE creation_mode,
      selection_mode          TYPE string,
      variant_management      TYPE string,
      row_count_mode          TYPE string,
      row_count               TYPE i,
      enable_mass_edit        TYPE abap_bool,
    END OF object_page,

    BEGIN OF list_report,
      initial_load           TYPE string,
      variant_management     TYPE string,
      type                   TYPE not_released,
      condensed_table_layout TYPE abap_bool,
      personalization        TYPE personalization,
    END OF list_report,
    object_pages TYPE SORTED TABLE OF object_page WITH UNIQUE KEY entity,
    BEGIN OF settings,
      list_report  TYPE list_report,
      object_pages TYPE object_pages,
    END OF settings.
ENDINTERFACE.