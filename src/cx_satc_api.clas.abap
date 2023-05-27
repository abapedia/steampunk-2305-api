CLASS cx_satc_api DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_t100_message.
    INTERFACES if_t100_dyn_msg.

    CONSTANTS satc_api_message_class TYPE symsgid VALUE 'SATC_API'.
    CONSTANTS:
    BEGIN OF message,
      BEGIN OF check_variant_does_not_exist,
        msgid TYPE symsgid VALUE satc_api_message_class,
        msgno TYPE symsgno VALUE '100',
        attr1 TYPE scx_attrname VALUE 'CHECK_VARIANT',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF check_variant_does_not_exist,
      BEGIN OF check_variant_may_not_be_used,
        msgid TYPE symsgid VALUE satc_api_message_class,
        msgno TYPE symsgno VALUE '101',
        attr1 TYPE scx_attrname VALUE 'CHECK_VARIANT',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF check_variant_may_not_be_used,
      BEGIN OF empty_object_set,
        msgid TYPE symsgid VALUE satc_api_message_class,
        msgno TYPE symsgno VALUE '102',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF empty_object_set,
      BEGIN OF transport_does_not_exist,
        msgid TYPE symsgid VALUE satc_api_message_class,
        msgno TYPE symsgno VALUE '103',
        attr1 TYPE scx_attrname VALUE 'TRANSPORT',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF transport_does_not_exist,
      BEGIN OF unexpected_error,
        msgid TYPE symsgid VALUE satc_api_message_class,
        msgno TYPE symsgno VALUE '001',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF unexpected_error,
      BEGIN OF execution_error,
        msgid TYPE symsgid VALUE satc_api_message_class,
        msgno TYPE symsgno VALUE '104',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF execution_error,
      BEGIN OF result_does_not_exist,
        msgid TYPE symsgid VALUE satc_api_message_class,
        msgno TYPE symsgno VALUE '105',
        attr1 TYPE scx_attrname VALUE 'RESULT_ID',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF result_does_not_exist,
    END OF message.

    METHODS constructor
    IMPORTING
      check_variant TYPE string OPTIONAL
      transport TYPE string OPTIONAL
      result_id TYPE string OPTIONAL
      textid LIKE if_t100_message=>t100key OPTIONAL
      previous LIKE previous OPTIONAL.

    DATA check_variant TYPE string READ-ONLY.
    DATA transport TYPE string READ-ONLY.
    DATA result_id TYPE string READ-ONLY.
  PROTECTED SECTION.
ENDCLASS.

CLASS cx_satc_api IMPLEMENTATION.
ENDCLASS.