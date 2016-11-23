- view: account_usage
  sql_table_name: SALESFORCE.ACCOUNT
  fields:
  
  - dimension: id
    type: number
    sql: ${TABLE}.id
  
  - dimension: akey
    type: string
    sql: ${TABLE}.AKEY_C
    
  - dimension: duo_account_id
    primary_key: true
    type: string
    sql: ${TABLE}.DUO_ACCOUNT_ID_C

  - dimension: account_activation_method
    type: string
    sql: ${TABLE}.ACCOUNT_ACTIVATION_METHOD_C

  - dimension: admin_activation_url
    type: string
    sql: ${TABLE}.ADMIN_ACTIVATION_URL_C

  - dimension: admin_first_auth_factor
    type: string
    sql: ${TABLE}.ADMIN_FIRST_AUTH_FACTOR_C

  - dimension: administrators
    type: number
    sql: ${TABLE}.ADMINISTRATORS_C

  - dimension: administrators_using_push
    type: number
    sql: ${TABLE}.ADMINISTRATORS_USING_PUSH_C

  - dimension: allowed_android_versions_c
    type: string
    sql: ${TABLE}.ALLOWED_ANDROID_VERSIONS_C

  - dimension: allowed_i_os_versions
    type: string
    sql: ${TABLE}.ALLOWED_I_OS_VERSIONS_C

  - dimension: android
    type: string
    sql: ${TABLE}.ANDROID_C

  - dimension: approved_for_overages
    type: yesno
    sql: ${TABLE}.APPROVED_FOR_OVERAGES_C

  - dimension: authenticated_in_last_30_days
    type: yesno
    sql: ${TABLE}.AUTHENTICATED_IN_LAST_30_DAYS_C

  - dimension: blackberry
    type: string
    sql: ${TABLE}.BLACKBERRY_C

  - dimension: bypass_auths
    type: number
    sql: ${TABLE}.BYPASS_AUTHS_C

  - dimension: cancelled_subscription
    type: yesno
    sql: ${TABLE}.CANCELLED_SUBSCRIPTION_C

  - dimension: custserv_last_updated
    type: string
    sql: ${TABLE}.CUSTSERV_LAST_UPDATED_C

  - dimension: deployment
    type: string
    sql: ${TABLE}.DEPLOYMENT_C

  - dimension: deployment_id
    type: string
    sql: ${TABLE}.DEPLOYMENT_ID_C

  - dimension: deployment_id_prior_value
    type: string
    sql: ${TABLE}.DEPLOYMENT_ID_PRIOR_VALUE_C

  - dimension: device_insight_android_devices
    type: number
    sql: ${TABLE}.DEVICE_INSIGHT_ANDROID_DEVICES_C

  - dimension: device_insight_black_berry
    type: number
    sql: ${TABLE}.DEVICE_INSIGHT_BLACK_BERRY_C

  - dimension: device_insight_i_os_devices
    type: number
    sql: ${TABLE}.DEVICE_INSIGHT_I_OS_DEVICES_C

  - dimension: device_insight_other
    type: number
    sql: ${TABLE}.DEVICE_INSIGHT_OTHER_C

  - dimension: device_insight_windows_phone_c
    type: number
    sql: ${TABLE}.DEVICE_INSIGHT_WINDOWS_PHONE_C

  - dimension: duo_account_name_c
    type: string
    sql: ${TABLE}.DUO_ACCOUNT_NAME_C

  - dimension_group: duo_care_end_date_c
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.DUO_CARE_END_DATE_C

  - dimension: duo_deleted_c
    type: yesno
    sql: ${TABLE}.DUO_DELETED_C

  - dimension: duo_directories_syncing_c
    type: number
    sql: ${TABLE}.DUO_DIRECTORIES_SYNCING_C

  - dimension: duo_edition_c
    type: string
    sql: ${TABLE}.DUO_EDITION_C

  - dimension: duo_enabled_methods_c
    type: string
    sql: ${TABLE}.DUO_ENABLED_METHODS_C

  - dimension: duo_enrollment_module_c
    type: string
    sql: ${TABLE}.DUO_ENROLLMENT_MODULE_C

  - dimension_group: duo_invoice_end_c
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.DUO_INVOICE_END_C

  - dimension_group: duo_invoice_start_c
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.DUO_INVOICE_START_C

  - dimension: duo_labs_enabled_c
    type: string
    sql: ${TABLE}.DUO_LABS_ENABLED_C

  - dimension: duo_payment_type_c
    type: string
    sql: ${TABLE}.DUO_PAYMENT_TYPE_C

  - dimension: duo_plan_users_c
    type: number
    sql: ${TABLE}.DUO_PLAN_USERS_C

  - dimension: duo_trial_end_c
    type: string
    sql: ${TABLE}.DUO_TRIAL_END_C

  - dimension: duo_trial_start_c
    type: string
    sql: ${TABLE}.DUO_TRIAL_START_C

  - dimension: i_os_c
    type: string
    sql: ${TABLE}.I_OS_C

  - dimension: integration_type
    type: string
    sql: ${TABLE}.INTEGRATION_TYPE_C

  - dimension: integrations
    type: number
    sql: ${TABLE}.INTEGRATIONS_C

  - dimension: integrations_using_ssp
    type: number
    sql: ${TABLE}.INTEGRATIONS_USING_SSP_C

  - dimension: integrations_using_trusted_devices
    type: number
    sql: ${TABLE}.INTEGRATIONS_USING_TRUSTED_DEVICES_C

  - dimension: integrations_using_trusted_networks
    type: number
    sql: ${TABLE}.INTEGRATIONS_USING_TRUSTED_NETWORKS_C

  - dimension: last_month_auths
    type: number
    sql: ${TABLE}.LAST_MONTH_AUTHS_C

  - dimension: last_authentication
    type: number
    sql: ${TABLE}.LAST_AUTHENTICATION_C  
    
  - dimension: num_of_child_accounts
    type: number
    sql: ${TABLE}.NUM_OF_CHILD_ACCOUNTS_C

  - dimension: num_of_contacts
    type: number
    sql: ${TABLE}.NUM_OF_CONTACTS_C

  - dimension: num_of_event
    type: number
    sql: ${TABLE}.NUM_OF_EVENT_C

  - dimension: num_of_tasks
    type: number
    sql: ${TABLE}.NUM_OF_TASKS_C

  - dimension: number_of_application_policies
    type: number
    sql: ${TABLE}.NUMBER_OF_APPLICATION_POLICIES_C

  - dimension: number_of_group_policies
    type: number
    sql: ${TABLE}.NUMBER_OF_GROUP_POLICIES_C

  - dimension: number_of_policies
    type: number
    sql: ${TABLE}.NUMBER_OF_POLICIES_C

  - dimension: on_premise_gateways
    type: number
    sql: ${TABLE}.ON_PREMISE_GATEWAYS_C

  - dimension: on_site
    type: yesno
    sql: ${TABLE}.ON_SITE_C

  - dimension: passcode_auths
    type: number
    sql: ${TABLE}.PASSCODE_AUTHS_C

  - dimension: personal_10_users
    type: yesno
    sql: ${TABLE}.PERSONAL_10_USERS_C

  - dimension: phone_auths
    type: number
    sql: ${TABLE}.PHONE_AUTHS_C

  - dimension: prior_edition
    type: string
    sql: ${TABLE}.PRIOR_EDITION_C

  - dimension: push_auths
    type: number
    sql: ${TABLE}.PUSH_AUTHS_C

  - dimension: request_a_demo
    type: yesno
    sql: ${TABLE}.REQUEST_A_DEMO_C

  - dimension: requested_account
    type: string
    sql: ${TABLE}.REQUESTED_ACCOUNT_C

  - dimension: requested_exist
    type: yesno
    sql: ${TABLE}.REQUESTED_EXIST_C

  - dimension: rooted_device_authentication_allowed
    type: yesno
    sql: ${TABLE}.ROOTED_DEVICE_AUTHENTICATION_ALLOWED_C

  - dimension: screen_lock_required_for_auth
    type: yesno
    sql: ${TABLE}.SCREEN_LOCK_REQUIRED_FOR_AUTH_C

  - dimension: sign_up_company_size
    type: string
    sql: ${TABLE}.SIGN_UP_COMPANY_SIZE_C

  - dimension: signup_comments
    type: string
    sql: ${TABLE}.SIGNUP_COMMENTS_C

  - dimension: signup_company_size
    type: string
    sql: ${TABLE}.SIGNUP_COMPANY_SIZE_C

  - dimension: signup_ip
    type: string
    sql: ${TABLE}.SIGNUP_IP_C

  - dimension: signup_num_users
    type: string
    sql: ${TABLE}.SIGNUP_NUM_USERS_C

  - dimension: signup_org
    type: string
    sql: ${TABLE}.SIGNUP_ORG_C

  - dimension: signup_plan
    type: string
    sql: ${TABLE}.SIGNUP_PLAN_C

  - dimension: signup_protect
    type: string
    sql: ${TABLE}.SIGNUP_PROTECT_C

  - dimension: signup_using_2_fa_today
    type: string
    sql: ${TABLE}.SIGNUP_USING_2_FA_TODAY_C

  - dimension: sms_auths
    type: number
    sql: ${TABLE}.SMS_AUTHS_C

  - dimension: this_month_auths
    type: number
    sql: ${TABLE}.THIS_MONTH_AUTHS_C

  - dimension: total_access_devices
    type: number
    sql: ${TABLE}.TOTAL_ACCESS_DEVICES_C

  - dimension: total_authentications
    type: number
    sql: ${TABLE}.TOTAL_AUTHENTICATIONS_C

  - dimension: total_devices
    type: number
    sql: ${TABLE}.TOTAL_DEVICES_C

  - dimension: total_mobile_devices
    type: number
    sql: ${TABLE}.TOTAL_MOBILE_DEVICES_C

  - dimension: total_of_unique_phone_in_last_30_day
    type: number
    sql: ${TABLE}.TOTAL_OF_UNIQUE_PHONE_IN_LAST_30_DAY_C

  - dimension: total_of_unique_phone_in_last_7_day
    type: number
    sql: ${TABLE}.TOTAL_OF_UNIQUE_PHONE_IN_LAST_7_DAY_C

  - dimension: total_of_unique_phone_numbers
    type: number
    sql: ${TABLE}.TOTAL_OF_UNIQUE_PHONE_NUMBERS_C

  - dimension: touch_id_required_for_auth
    type: yesno
    sql: ${TABLE}.TOUCH_ID_REQUIRED_FOR_AUTH_C

  - dimension: transfer_requested
    type: yesno
    sql: ${TABLE}.TRANSFER_REQUESTED_C

  - dimension: two_month_auths
    type: number
    sql: ${TABLE}.TWO_MONTH_AUTHS_C

  - dimension: u_2_f_tokens
    type: number
    sql: ${TABLE}.U_2_F_TOKENS_C

  - dimension: user_location_enabled
    type: yesno
    sql: ${TABLE}.USER_LOCATION_ENABLED_C

  - dimension: users_active_over_30_days
    type: number
    sql: ${TABLE}.USERS_ACTIVE_OVER_30_DAYS_C

  - dimension: users_active_over_7_days
    type: number
    sql: ${TABLE}.USERS_ACTIVE_OVER_7_DAYS_C

  - dimension: users
    type: number
    sql: ${TABLE}.USERS_C

  - dimension: using_android_version
    type: yesno
    sql: ${TABLE}.USING_ANDROID_VERSION_C

  - dimension: using_cloud_access_point
    type: yesno
    sql: ${TABLE}.USING_CLOUD_ACCESS_POINT_C

  - dimension: using_i_os_version
    type: yesno
    sql: ${TABLE}.USING_I_OS_VERSION_C

  - dimension: using_ip_reputation
    type: yesno
    sql: ${TABLE}.USING_IP_REPUTATION_C

  - dimension: using_platform_restriction
    type: yesno
    sql: ${TABLE}.USING_PLATFORM_RESTRICTION_C

  - dimension: using_user_location
    type: yesno
    sql: ${TABLE}.USING_USER_LOCATION_C

  - dimension: view_account_info_in_omni
    type: string
    sql: ${TABLE}.VIEW_ACCOUNT_INFO_IN_OMNI_C

  - dimension: why_duo
    type: string
    sql: ${TABLE}.WHY_DUO_C

  - dimension: windows_phone
    type: string
    sql: ${TABLE}.WINDOWS_PHONE_C

  - dimension: working_account
    type: string
    sql: ${TABLE}.WORKING_ACCOUNT_C

  - dimension: working_exists
    type: yesno
    sql: ${TABLE}.WORKING_EXISTS_C

  - measure: count
    type: count




