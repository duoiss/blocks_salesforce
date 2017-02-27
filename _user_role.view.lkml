view: user_role {
  sql_table_name: SALESFORCE.USER_ROLE ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.ID ;;
  }

  dimension: case_access_for_account_owner {
    type: string
    sql: ${TABLE}.CASE_ACCESS_FOR_ACCOUNT_OWNER ;;
  }

  dimension: contact_access_for_account_owner {
    type: string
    sql: ${TABLE}.CONTACT_ACCESS_FOR_ACCOUNT_OWNER ;;
  }

  dimension: developer_name {
    type: string
    sql: ${TABLE}.DEVELOPER_NAME ;;
  }

  dimension: forecast_user_id {
    type: string
    sql: ${TABLE}.FORECAST_USER_ID ;;
  }

  dimension: last_modified_by_id {
    type: string
    sql: ${TABLE}.LAST_MODIFIED_BY_ID ;;
  }

  dimension: last_modified_date {
    type: string
    sql: ${TABLE}.LAST_MODIFIED_DATE ;;
  }

  dimension: may_forecast_manager_share {
    type: yesno
    sql: ${TABLE}.MAY_FORECAST_MANAGER_SHARE ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: opportunity_access_for_account_owner {
    type: string
    sql: ${TABLE}.OPPORTUNITY_ACCESS_FOR_ACCOUNT_OWNER ;;
  }

  dimension: parent_role_id {
    type: string
    sql: ${TABLE}.PARENT_ROLE_ID ;;
  }

  dimension: portal_account_id {
    type: string
    sql: ${TABLE}.PORTAL_ACCOUNT_ID ;;
  }

  dimension: portal_account_owner_id {
    type: string
    sql: ${TABLE}.PORTAL_ACCOUNT_OWNER_ID ;;
  }

  dimension: portal_role {
    type: string
    sql: ${TABLE}.PORTAL_ROLE ;;
  }

  dimension: portal_type {
    type: string
    sql: ${TABLE}.PORTAL_TYPE ;;
  }

  dimension: rollup_description {
    type: string
    sql: ${TABLE}.ROLLUP_DESCRIPTION ;;
  }

  dimension: system_modstamp {
    type: string
    sql: ${TABLE}.SYSTEM_MODSTAMP ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, developer_name, user.count]
  }
}
