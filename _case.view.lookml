- view: case
  sql_table_name: SALESFORCE."CASE"
  fields:

  - dimension: id
    primary_key: true
    type: string
    sql: ${TABLE}.ID

  - dimension: _fivetran_synced
    type: string
    sql: ${TABLE}._FIVETRAN_SYNCED

  - dimension: account_id
    type: string
    # hidden: true
    sql: ${TABLE}.ACCOUNT_ID

  - dimension: activate_wfrs_c
    type: yesno
    sql: ${TABLE}.ACTIVATE_WFRS_C

  - dimension: affected_application_or_duo_feature_c
    type: string
    sql: ${TABLE}.AFFECTED_APPLICATION_OR_DUO_FEATURE_C

  - dimension: amount_c
    type: number
    sql: ${TABLE}.AMOUNT_C

  - dimension: asset_id
    type: string
    # hidden: true
    sql: ${TABLE}.ASSET_ID

  - dimension: authentication_c
    type: string
    sql: ${TABLE}.AUTHENTICATION_C

  - dimension: basic_question_c
    type: yesno
    sql: ${TABLE}.BASIC_QUESTION_C

  - dimension: business_hours_id
    type: string
    # hidden: true
    sql: ${TABLE}.BUSINESS_HOURS_ID

  - dimension: case_age_in_business_hours_c
    type: number
    sql: ${TABLE}.CASE_AGE_IN_BUSINESS_HOURS_C

  - dimension: case_description_c
    type: string
    sql: ${TABLE}.CASE_DESCRIPTION_C

  - dimension: case_duo_edition_c
    type: string
    sql: ${TABLE}.CASE_DUO_EDITION_C

  - dimension: case_number
    type: string
    sql: ${TABLE}.CASE_NUMBER

  - dimension: case_reason_description_c
    type: string
    sql: ${TABLE}.CASE_REASON_DESCRIPTION_C

  - dimension: case_status_3_c
    type: string
    sql: ${TABLE}.CASE_STATUS_3_C

  - dimension: case_timer_c
    type: string
    sql: ${TABLE}.CASE_TIMER_C

  - dimension: category_c
    type: string
    sql: ${TABLE}.CATEGORY_C

  - dimension: category_sub_list_c
    type: string
    sql: ${TABLE}.CATEGORY_SUB_LIST_C

  - dimension: check_status_c
    type: yesno
    sql: ${TABLE}.CHECK_STATUS_C

  - dimension: cirrusadv_created_by_cirrus_insight_c
    type: yesno
    sql: ${TABLE}.CIRRUSADV_CREATED_BY_CIRRUS_INSIGHT_C

  - dimension: close_code_c
    type: string
    sql: ${TABLE}.CLOSE_CODE_C

  - dimension: closed_date
    type: string
    sql: ${TABLE}.CLOSED_DATE

  - dimension: closed_due_to_inactivity_c
    type: yesno
    sql: ${TABLE}.CLOSED_DUE_TO_INACTIVITY_C

  - dimension: community_enrollment_c
    type: yesno
    sql: ${TABLE}.COMMUNITY_ENROLLMENT_C

  - dimension: community_how_do_we_reproduce_c
    type: string
    sql: ${TABLE}.COMMUNITY_HOW_DO_WE_REPRODUCE_C

  - dimension: community_other_affected_feature_c
    type: string
    sql: ${TABLE}.COMMUNITY_OTHER_AFFECTED_FEATURE_C

  - dimension: completed_survey_c
    type: yesno
    sql: ${TABLE}.COMPLETED_SURVEY_C

  - dimension: contact_id
    type: string
    # hidden: true
    sql: ${TABLE}.CONTACT_ID

  - dimension: created_by_id
    type: string
    sql: ${TABLE}.CREATED_BY_ID

  - dimension: created_date
    type: string
    sql: ${TABLE}.CREATED_DATE

  - dimension: description
    type: string
    sql: ${TABLE}.DESCRIPTION

  - dimension: do_not_send_csat_c
    type: yesno
    sql: ${TABLE}.DO_NOT_SEND_CSAT_C

  - dimension_group: enterprise_workshop_c
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.ENTERPRISE_WORKSHOP_C

  - dimension: entitlement_id
    type: string
    # hidden: true
    sql: ${TABLE}.ENTITLEMENT_ID

  - dimension_group: eta_c
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.ETA_C

  - dimension: feature_requested_c
    type: string
    sql: ${TABLE}.FEATURE_REQUESTED_C

  - dimension: first_resolved_date_time_c
    type: string
    sql: ${TABLE}.FIRST_RESOLVED_DATE_TIME_C

  - dimension: first_response_date_time_c
    type: string
    sql: ${TABLE}.FIRST_RESPONSE_DATE_TIME_C

  - dimension: first_response_time_c
    type: number
    sql: ${TABLE}.FIRST_RESPONSE_TIME_C

  - dimension: incident_c
    type: string
    sql: ${TABLE}.INCIDENT_C

  - dimension: integration_type_c
    type: string
    sql: ${TABLE}.INTEGRATION_TYPE_C

  - dimension: intergrations_c
    type: string
    sql: ${TABLE}.INTERGRATIONS_C

  - dimension: is_closed
    type: yesno
    sql: ${TABLE}.IS_CLOSED

  - dimension: is_closed_on_create
    type: yesno
    sql: ${TABLE}.IS_CLOSED_ON_CREATE

  - dimension: is_deleted
    type: yesno
    sql: ${TABLE}.IS_DELETED

  - dimension: is_escalated
    type: yesno
    sql: ${TABLE}.IS_ESCALATED

  - dimension: is_stopped
    type: yesno
    sql: ${TABLE}.IS_STOPPED

  - dimension: jira_link_c
    type: string
    sql: ${TABLE}.JIRA_LINK_C

  - dimension: last_modified_by_id
    type: string
    sql: ${TABLE}.LAST_MODIFIED_BY_ID

  - dimension: last_modified_date
    type: string
    sql: ${TABLE}.LAST_MODIFIED_DATE

  - dimension: last_referenced_date
    type: string
    sql: ${TABLE}.LAST_REFERENCED_DATE

  - dimension: last_status_change_c
    type: string
    sql: ${TABLE}.LAST_STATUS_CHANGE_C

  - dimension: last_viewed_date
    type: string
    sql: ${TABLE}.LAST_VIEWED_DATE

  - dimension: lead_c
    type: string
    sql: ${TABLE}.LEAD_C

  - dimension: market_segment_c
    type: string
    sql: ${TABLE}.MARKET_SEGMENT_C

  - dimension: meeting_review_c
    type: yesno
    sql: ${TABLE}.MEETING_REVIEW_C

  - dimension: milestone_status
    type: string
    sql: ${TABLE}.MILESTONE_STATUS

  - dimension: of_sent_emails_c
    type: number
    sql: ${TABLE}.OF_SENT_EMAILS_C

  - dimension: on_call_status_c
    type: string
    sql: ${TABLE}.ON_CALL_STATUS_C

  - dimension: open_date_time_custom_c
    type: string
    sql: ${TABLE}.OPEN_DATE_TIME_CUSTOM_C

  - dimension: open_status_time_c
    type: string
    sql: ${TABLE}.OPEN_STATUS_TIME_C

  - dimension: open_time_c
    type: number
    sql: ${TABLE}.OPEN_TIME_C

  - dimension: opportunity_c
    type: string
    sql: ${TABLE}.OPPORTUNITY_C

  - dimension_group: opportunity_close_date_c
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.OPPORTUNITY_CLOSE_DATE_C

  - dimension: opportunity_driver_c
    type: string
    sql: ${TABLE}.OPPORTUNITY_DRIVER_C

  - dimension: opportunity_type_c
    type: string
    sql: ${TABLE}.OPPORTUNITY_TYPE_C

  - dimension: opportunity_users_c
    type: number
    sql: ${TABLE}.OPPORTUNITY_USERS_C

  - dimension: origin
    type: string
    sql: ${TABLE}.ORIGIN

  - dimension: owner_id
    type: string
    sql: ${TABLE}.OWNER_ID

  - dimension: parent_id
    type: string
    sql: ${TABLE}.PARENT_ID

  - dimension: pending_status_time_c
    type: string
    sql: ${TABLE}.PENDING_STATUS_TIME_C

  - dimension: pending_time_c
    type: number
    sql: ${TABLE}.PENDING_TIME_C

  - dimension: phab_reference_c
    type: string
    sql: ${TABLE}.PHAB_REFERENCE_C

  - dimension: phab_task_type_c
    type: string
    sql: ${TABLE}.PHAB_TASK_TYPE_C

  - dimension: phab_ticket_c
    type: string
    sql: ${TABLE}.PHAB_TICKET_C

  - dimension_group: pilot_implementation_c
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.PILOT_IMPLEMENTATION_C

  - dimension_group: pilot_planning_c
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.PILOT_PLANNING_C

  - dimension: priority
    type: string
    sql: ${TABLE}.PRIORITY

  - dimension: problem_solving_c
    type: string
    sql: ${TABLE}.PROBLEM_SOLVING_C

  - dimension_group: product_demo_c
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.PRODUCT_DEMO_C

  - dimension: product_id
    type: string
    sql: ${TABLE}.PRODUCT_ID

  - dimension: reason
    type: string
    sql: ${TABLE}.REASON

  - dimension: record_type_id
    type: string
    # hidden: true
    sql: ${TABLE}.RECORD_TYPE_ID

  - dimension: reopens_c
    type: number
    sql: ${TABLE}.REOPENS_C

  - dimension: replies_formula_c
    type: number
    sql: ${TABLE}.REPLIES_FORMULA_C

  - dimension: resolution_details_c
    type: string
    sql: ${TABLE}.RESOLUTION_DETAILS_C

  - dimension_group: rfi_rfp_c
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.RFI_RFP_C

  - dimension_group: se_discovery_c
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.SE_DISCOVERY_C

  - dimension_group: security_questionnaire_c
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.SECURITY_QUESTIONNAIRE_C

  - dimension: sla_exit_date
    type: string
    sql: ${TABLE}.SLA_EXIT_DATE

  - dimension: sla_is_approaching_c
    type: yesno
    sql: ${TABLE}.SLA_IS_APPROACHING_C

  - dimension: sla_start_date
    type: string
    sql: ${TABLE}.SLA_START_DATE

  - dimension: source_id
    type: string
    sql: ${TABLE}.SOURCE_ID

  - dimension: status
    type: string
    sql: ${TABLE}.STATUS

  - dimension: status_c
    type: string
    sql: ${TABLE}.STATUS_C

  - dimension: status_next_action_c
    type: string
    sql: ${TABLE}.STATUS_NEXT_ACTION_C

  - dimension: stop_start_date
    type: string
    sql: ${TABLE}.STOP_START_DATE

  - dimension: subject
    type: string
    sql: ${TABLE}.SUBJECT

  - dimension: supplied_company
    type: string
    sql: ${TABLE}.SUPPLIED_COMPANY

  - dimension: supplied_email
    type: string
    sql: ${TABLE}.SUPPLIED_EMAIL

  - dimension: supplied_name
    type: string
    sql: ${TABLE}.SUPPLIED_NAME

  - dimension: supplied_phone
    type: string
    sql: ${TABLE}.SUPPLIED_PHONE

  - dimension: system_modstamp
    type: string
    sql: ${TABLE}.SYSTEM_MODSTAMP

  - dimension: tags_c
    type: string
    sql: ${TABLE}.TAGS_C

  - dimension: time_with_customer_c
    type: number
    sql: ${TABLE}.TIME_WITH_CUSTOMER_C

  - dimension: time_with_support_c
    type: number
    sql: ${TABLE}.TIME_WITH_SUPPORT_C

  - dimension: to_addresses_c
    type: string
    sql: ${TABLE}.TO_ADDRESSES_C

  - dimension: type
    type: string
    sql: ${TABLE}.TYPE

  - dimension: version_information_c
    type: string
    sql: ${TABLE}.VERSION_INFORMATION_C

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - supplied_name
    - contact.last_name
    - contact.first_name
    - contact.name
    - contact.assistant_name
    - contact.jigsaw_contact_id
    - account.name
    - account.duo_account_id_c
    - asset.root_asset_id
    - asset.name
    - entitlement.id
    - entitlement.name
    - business_hours.id
    - business_hours.name
    - record_type.id
    - record_type.name
    - record_type.developer_name
    - case_article.count
    - case_history.count
    - case_milestone.count
    - case_share.count
    - case_solution.count

