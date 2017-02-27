view: _tpmilestones {
  sql_table_name: TRUSTEDPATH.TPMILESTONES ;;

  dimension: akey {
    type: string
    primary_key: yes
    sql: ${TABLE}.AKEY ;;
  }

  dimension: created_on {
    type: string
    sql: ${TABLE}.CREATED_ON ;;
  }

  dimension: first_admin_on {
    type: string
    sql: ${TABLE}.FIRST_ADMIN_ON ;;
  }

  dimension: first_auth_on {
    type: string
    sql: ${TABLE}.FIRST_AUTH_ON ;;
  }

  dimension: first_integration_on {
    type: string
    sql: ${TABLE}.FIRST_INTEGRATION_ON ;;
  }

  dimension: updated_on {
    type: string
    sql: ${TABLE}.UPDATED_ON ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
