view: account_history {
  sql_table_name: SALESFORCE.ACCOUNT_HISTORY ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.ID ;;
  }

  dimension: account_id {
    type: string
    # hidden: true
    sql: ${TABLE}.ACCOUNT_ID ;;
  }

  dimension: created_by_id {
    type: string
    sql: ${TABLE}.CREATED_BY_ID ;;
  }

  dimension: created_date {
    type: string
    sql: ${TABLE}.CREATED_DATE ;;
  }

  dimension: field {
    type: string
    sql: ${TABLE}.FIELD ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.IS_DELETED ;;
  }

  dimension: new_value {
    type: string
    sql: ${TABLE}.NEW_VALUE ;;
  }

  dimension: old_value {
    type: string
    sql: ${TABLE}.OLD_VALUE ;;
  }

  measure: count {
    type: count
    drill_fields: [id, account.name, account.duo_account_id_c]
  }
}
