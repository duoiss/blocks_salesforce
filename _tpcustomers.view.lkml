view: _tpcustomers {
  sql_table_name: SALESFORCE.TPCUSTOMERS ;;

  dimension: account_activation_method {
    type: string
    sql: ${TABLE}.ACCOUNT_ACTIVATION_METHOD ;;
  }

  dimension: account_id {
    type: string
    sql: ${TABLE}.ACCOUNT_ID ;;
  }

  dimension: account_name {
    type: string
    sql: ${TABLE}.ACCOUNT_NAME ;;
  }

  dimension: akey {
    type: string
    primary_key: yes
    sql: ${TABLE}.AKEY ;;
  }

  dimension: deployment {
    type: string
    sql: ${TABLE}.DEPLOYMENT ;;
  }

  dimension: deployment_id {
    type: string
    sql: ${TABLE}.DEPLOYMENT_ID ;;
  }

  dimension: duo_labs_enabled {
    type: string
    sql: ${TABLE}.DUO_LABS_ENABLED ;;
  }

  dimension: edition {
    type: string
    sql: ${TABLE}.EDITION ;;
  }

  dimension: enabled_auth_methods {
    type: string
    sql: ${TABLE}.ENABLED_AUTH_METHODS ;;
  }

  dimension: first_admin_auth_factor {
    type: string
    sql: ${TABLE}.FIRST_ADMIN_AUTH_FACTOR ;;
  }

  dimension: has_custom_logo {
    type: string
    sql: ${TABLE}.HAS_CUSTOM_LOGO ;;
  }

  dimension: integrations {
    type: string
    sql: ${TABLE}.INTEGRATIONS ;;
  }

  dimension: invoice_end {
    type: string
    sql: ${TABLE}.INVOICE_END ;;
  }

  dimension: invoice_start {
    type: string
    sql: ${TABLE}.INVOICE_START ;;
  }

  dimension: last_auth_ts {
    type: string
    sql: ${TABLE}.LAST_AUTH_TS ;;
  }

  dimension: num_active_users_30_days {
    type: string
    sql: ${TABLE}.NUM_ACTIVE_USERS_30_DAYS ;;
  }

  dimension: num_active_users_7_days {
    type: string
    sql: ${TABLE}.NUM_ACTIVE_USERS_7_DAYS ;;
  }

  dimension: num_admins {
    type: string
    sql: ${TABLE}.NUM_ADMINS ;;
  }

  dimension: num_admins_using_push {
    type: string
    sql: ${TABLE}.NUM_ADMINS_USING_PUSH ;;
  }

  dimension: num_application_policies {
    type: string
    sql: ${TABLE}.NUM_APPLICATION_POLICIES ;;
  }

  dimension: num_auths {
    type: string
    sql: ${TABLE}.NUM_AUTHS ;;
  }

  dimension: num_group_policies {
    type: string
    sql: ${TABLE}.NUM_GROUP_POLICIES ;;
  }

  dimension: num_integrations {
    type: string
    sql: ${TABLE}.NUM_INTEGRATIONS ;;
  }

  dimension: num_integrations_trusted_devices {
    type: string
    sql: ${TABLE}.NUM_INTEGRATIONS_TRUSTED_DEVICES ;;
  }

  dimension: num_integrations_trusted_networks {
    type: string
    sql: ${TABLE}.NUM_INTEGRATIONS_TRUSTED_NETWORKS ;;
  }

  dimension: num_integrations_using_ssp {
    type: string
    sql: ${TABLE}.NUM_INTEGRATIONS_USING_SSP ;;
  }

  dimension: num_ldap_directories_synced {
    type: string
    sql: ${TABLE}.NUM_LDAP_DIRECTORIES_SYNCED ;;
  }

  dimension: num_policies {
    type: string
    sql: ${TABLE}.NUM_POLICIES ;;
  }

  dimension: num_unique_phone_numbers {
    type: string
    sql: ${TABLE}.NUM_UNIQUE_PHONE_NUMBERS ;;
  }

  dimension: num_unique_phones_30_days {
    type: string
    sql: ${TABLE}.NUM_UNIQUE_PHONES_30_DAYS ;;
  }

  dimension: num_unique_phones_7_days {
    type: string
    sql: ${TABLE}.NUM_UNIQUE_PHONES_7_DAYS ;;
  }

  dimension: num_users {
    type: string
    sql: ${TABLE}.NUM_USERS ;;
  }

  dimension: plan_users {
    type: string
    sql: ${TABLE}.PLAN_USERS ;;
  }

  dimension: platform_trial_end {
    type: string
    sql: ${TABLE}.PLATFORM_TRIAL_END ;;
  }

  dimension: platform_trial_start {
    type: string
    sql: ${TABLE}.PLATFORM_TRIAL_START ;;
  }

  dimension: trial_end_date {
    type: string
    sql: ${TABLE}.TRIAL_END_DATE ;;
  }

  dimension: trial_start_date {
    type: string
    sql: ${TABLE}.TRIAL_START_DATE ;;
  }

  dimension: updated_on {
    type: string
    sql: ${TABLE}.UPDATED_ON ;;
  }

  measure: count {
    type: count
    drill_fields: [account_name]
  }
}
