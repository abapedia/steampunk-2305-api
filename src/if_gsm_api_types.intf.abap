INTERFACE if_gsm_api_types
  PUBLIC.

  TYPES tv_attribute_id TYPE c LENGTH 40.
  TYPES tv_category TYPE c LENGTH 10.
  TYPES tv_context_id TYPE c LENGTH 60.
  TYPES tv_context_type TYPE c LENGTH 30.
  TYPES tv_data_type TYPE c LENGTH 10.
  TYPES tv_description TYPE string.
  TYPES tv_metric_group_id TYPE c LENGTH 30.
  TYPES tv_metric_id TYPE c LENGTH 40.
  TYPES tv_metric_type TYPE c LENGTH 10.
  TYPES tv_name TYPE c LENGTH 60.
  TYPES tv_period TYPE c LENGTH 4.
  TYPES tv_provider_id TYPE c LENGTH 30.
  TYPES tv_rating TYPE i.
  TYPES tv_retention_time TYPE i.
  TYPES tv_runtime_ctx TYPE c LENGTH 80.
  TYPES tv_runtime_id TYPE c LENGTH 12.
  TYPES tv_severity TYPE i.
  TYPES tv_target_type TYPE c LENGTH 10.
  TYPES tv_unit TYPE c LENGTH 10.
  TYPES tv_value TYPE p LENGTH 17 DECIMALS 0.
  TYPES tv_value_text TYPE c LENGTH 255.
  TYPES:
    BEGIN OF ts_metric,
      provider_id TYPE tv_provider_id,
      metric_id   TYPE tv_metric_id,
      metric_name TYPE tv_name,
    END OF ts_metric.
  TYPES:
    tt_metrics TYPE SORTED TABLE OF ts_metric
               WITH UNIQUE KEY provider_id
                               metric_id.
  TYPES:
    BEGIN OF ts_attribute,
      attribute_id TYPE string,
      value        TYPE string,
    END OF ts_attribute.
  TYPES:
    tt_attributes TYPE SORTED TABLE OF ts_attribute
                  WITH UNIQUE KEY attribute_id.
  TYPES:
    BEGIN OF ts_metric_value,
      provider_id     TYPE tv_provider_id,
      metric_id       TYPE tv_metric_id,
      value_rating    TYPE tv_rating,
      value_count     TYPE int4,
      value_max       TYPE tv_value,
      value_min       TYPE tv_value,
      value_sum       TYPE tv_value,
      value_text      TYPE tv_value_text,
      value_timestamp TYPE timestamp,
      time_period     TYPE int4,
      attributes      TYPE if_gsm_api_types=>tt_attributes,
    END OF ts_metric_value.
  TYPES:
    tt_metric_values TYPE STANDARD TABLE OF ts_metric_value
                     WITH NON-UNIQUE DEFAULT KEY.
  TYPES:
    BEGIN OF ts_message,
           timestamp TYPE  timestamp,
           severity  TYPE  symsgty,
           msgid     TYPE  symsgid,
           msgno     TYPE  symsgno,
           msgv1     TYPE  symsgv,
           msgv2     TYPE  symsgv,
           msgv3     TYPE  symsgv,
           msgv4     TYPE  symsgv,
         END OF ts_message.
  TYPES:
    tt_messages TYPE STANDARD TABLE OF ts_message
                     WITH NON-UNIQUE DEFAULT KEY.
ENDINTERFACE.