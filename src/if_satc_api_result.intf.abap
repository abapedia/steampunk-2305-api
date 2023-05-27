INTERFACE if_satc_api_result
  PUBLIC.

  TYPES ty_result_id TYPE x LENGTH 16.
  TYPES ty_check_name TYPE c LENGTH 30.
  TYPES ty_package_name TYPE c LENGTH 30.
  TYPES:
    BEGIN OF ENUM ty_exemption_status STRUCTURE exemption_status,
    unresolved,
    exemption_requested,
    exempted,
    END OF ENUM ty_exemption_status STRUCTURE exemption_status.
  TYPES:
    BEGIN OF ty_finding,
    object TYPE if_ci_atc_check=>ty_object,
    check TYPE ty_check_name,
    code TYPE if_ci_atc_check=>ty_finding_code,
    severity TYPE if_ci_atc_check=>ty_finding_severity,
    sub_object TYPE if_ci_atc_check=>ty_object,
    position TYPE if_ci_atc_check=>ty_position,
    checksum TYPE if_ci_atc_check=>ty_checksum,
    exemption_status TYPE ty_exemption_status,
    package TYPE ty_package_name,
    first_found_on TYPE tzntstmps,
    END OF ty_finding.
  TYPES ty_findings TYPE SORTED TABLE OF ty_finding WITH NON-UNIQUE KEY object.
  TYPES
    BEGIN OF ty_finding_with_text.
    INCLUDE TYPE ty_finding.
  TYPES:
    check_title TYPE string,
    message_text TYPE string,
    END OF ty_finding_with_text.
  TYPES ty_findings_with_text TYPE SORTED TABLE OF ty_finding_with_text WITH NON-UNIQUE KEY object.

  METHODS get_result_id
    RETURNING VALUE(result_id) TYPE ty_result_id.
  METHODS get_findings
    RETURNING VALUE(findings) TYPE ty_findings.
  METHODS get_findings_with_text
    RETURNING VALUE(findings) TYPE ty_findings_with_text.

ENDINTERFACE.