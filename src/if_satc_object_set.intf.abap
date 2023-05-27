INTERFACE if_satc_object_set PUBLIC.

  TYPES:
    BEGIN OF ty_object_key,
      obj_name TYPE c LENGTH 40,
      obj_type TYPE c LENGTH 4,
    END OF ty_object_key,
    ty_object_keys TYPE SORTED TABLE OF ty_object_key WITH UNIQUE KEY obj_name obj_type.
  TYPES ty_object_provider_id TYPE c LENGTH 20.

  METHODS:
    get_object_keys
      RETURNING VALUE(r_object_keys) TYPE if_satc_object_set=>ty_object_keys,
    get_object_provider_id
      RETURNING VALUE(r_object_provider) TYPE ty_object_provider_id.

ENDINTERFACE.