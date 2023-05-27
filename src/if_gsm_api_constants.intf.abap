INTERFACE if_gsm_api_constants
  PUBLIC.

  CONSTANTS:
    BEGIN OF e_severity,
      none        TYPE if_gsm_api_types=>tv_severity VALUE 1,
      _0_very_low TYPE if_gsm_api_types=>tv_severity VALUE 1,
      _1_very_low TYPE if_gsm_api_types=>tv_severity VALUE 1,
      _2_low      TYPE if_gsm_api_types=>tv_severity VALUE 1,
      _3_low      TYPE if_gsm_api_types=>tv_severity VALUE 1,
      _4_medium   TYPE if_gsm_api_types=>tv_severity VALUE 1,
      _5_medium   TYPE if_gsm_api_types=>tv_severity VALUE 1,
      _6_high     TYPE if_gsm_api_types=>tv_severity VALUE 1,
      _7_high     TYPE if_gsm_api_types=>tv_severity VALUE 1,
      _8_critical TYPE if_gsm_api_types=>tv_severity VALUE 1,
      _9_critical TYPE if_gsm_api_types=>tv_severity VALUE 1,
    END OF e_severity.
  CONSTANTS:
    BEGIN OF e_metric_type,
      counter   TYPE if_gsm_api_types=>tv_metric_type VALUE 1,
      gauge     TYPE if_gsm_api_types=>tv_metric_type VALUE 1,
      histogram TYPE if_gsm_api_types=>tv_metric_type VALUE 1,
      quota     TYPE if_gsm_api_types=>tv_metric_type VALUE 1,
      summary   TYPE if_gsm_api_types=>tv_metric_type VALUE 1,
    END OF e_metric_type.
  CONSTANTS:
    BEGIN OF e_target_type,
      health TYPE if_gsm_api_types=>tv_target_type VALUE 1,
      maas   TYPE if_gsm_api_types=>tv_target_type VALUE 1,
    END OF e_target_type.
  CONSTANTS:
    BEGIN OF e_data_type,
      integer TYPE if_gsm_api_types=>tv_data_type VALUE 1,
      float   TYPE if_gsm_api_types=>tv_data_type VALUE 1,
      string  TYPE if_gsm_api_types=>tv_data_type VALUE 1,
    END OF e_data_type.
  CONSTANTS:
    BEGIN OF e_unit,
      counter     TYPE if_gsm_api_types=>tv_unit VALUE 1,
      megabytes   TYPE if_gsm_api_types=>tv_unit VALUE 1,
      gigabytes   TYPE if_gsm_api_types=>tv_unit VALUE 1,
      microsecond TYPE if_gsm_api_types=>tv_unit VALUE 1,
      millisecond TYPE if_gsm_api_types=>tv_unit VALUE 1,
      minutes     TYPE if_gsm_api_types=>tv_unit VALUE 1,
      percent     TYPE if_gsm_api_types=>tv_unit VALUE 1,
      per_second  TYPE if_gsm_api_types=>tv_unit VALUE 1,
      seconds     TYPE if_gsm_api_types=>tv_unit VALUE 1,
      none        TYPE if_gsm_api_types=>tv_unit VALUE 1,
    END OF e_unit.
  CONSTANTS:
    BEGIN OF e_period,
      every_05_minutes TYPE if_gsm_api_types=>tv_period VALUE 1,
      every_10_minutes TYPE if_gsm_api_types=>tv_period VALUE 1,
      every_30_minutes TYPE if_gsm_api_types=>tv_period VALUE 1,
      hourly           TYPE if_gsm_api_types=>tv_period VALUE 1,
      every_01_hour    TYPE if_gsm_api_types=>tv_period VALUE 1,
      every_02_hours   TYPE if_gsm_api_types=>tv_period VALUE 1,
      every_06_hours   TYPE if_gsm_api_types=>tv_period VALUE 1,
      every_12_hours   TYPE if_gsm_api_types=>tv_period VALUE 1,
      daily            TYPE if_gsm_api_types=>tv_period VALUE 1,
      every_01_day     TYPE if_gsm_api_types=>tv_period VALUE 1,
      weekly           TYPE if_gsm_api_types=>tv_period VALUE 1,
      monthly          TYPE if_gsm_api_types=>tv_period VALUE 1,
    END OF e_period.
  CONSTANTS:
    BEGIN OF e_retention_time,
      _02_days  TYPE if_gsm_api_types=>tv_retention_time VALUE 1,
      _14_days  TYPE if_gsm_api_types=>tv_retention_time VALUE 1,
      _30_days  TYPE if_gsm_api_types=>tv_retention_time VALUE 1,
      _90_days  TYPE if_gsm_api_types=>tv_retention_time VALUE 1,
      _180_days TYPE if_gsm_api_types=>tv_retention_time VALUE 1,
      _auto     TYPE if_gsm_api_types=>tv_retention_time VALUE 1,
    END OF e_retention_time.
  CONSTANTS:
    BEGIN OF e_category,
      availability    TYPE if_gsm_api_types=>tv_category VALUE 1,
      performance     TYPE if_gsm_api_types=>tv_category VALUE 1,
      exceptions      TYPE if_gsm_api_types=>tv_category VALUE 1,
      configuration   TYPE if_gsm_api_types=>tv_category VALUE 1,
      self_monitoring TYPE if_gsm_api_types=>tv_category VALUE 1,
      usage           TYPE if_gsm_api_types=>tv_category VALUE 1,
    END OF e_category.
  CONSTANTS:
    BEGIN OF e_granularity,
      hour         TYPE if_gsm_api_types=>tv_period VALUE 1,
      day          TYPE if_gsm_api_types=>tv_period VALUE 1,
      as_collected TYPE if_gsm_api_types=>tv_period VALUE 1,
    END OF e_granularity.
  CONSTANTS:
    BEGIN OF e_rating,
      _0_info     TYPE if_gsm_api_types=>tv_rating VALUE 0,
      _1_ok       TYPE if_gsm_api_types=>tv_rating VALUE 1,
      _2_warning  TYPE if_gsm_api_types=>tv_rating VALUE 2,
      _3_critical TYPE if_gsm_api_types=>tv_rating VALUE 3,
      _4_fatal    TYPE if_gsm_api_types=>tv_rating VALUE 4,
    END OF e_rating.
ENDINTERFACE.