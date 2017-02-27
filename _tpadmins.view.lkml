view: _tpadmins {
  sql_table_name: SALESFORCE.TPADMINS ;;

  dimension: adminid {
    type: string
    primary_key: yes
    sql: ${TABLE}.ADMINID ;;
  }

  dimension: adminname {
    type: string
    sql: ${TABLE}.ADMINNAME ;;
  }

  dimension: adminrole {
    type: string
    sql: ${TABLE}.ADMINROLE ;;
  }

  dimension: akey {
    type: string
    sql: ${TABLE}.AKEY ;;
  }

  dimension: deleted_on {
    type: string
    sql: ${TABLE}.DELETED_ON ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.EMAIL ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.PHONE ;;
  }

  dimension: updated_on {
    type: string
    sql: ${TABLE}.UPDATED_ON ;;
  }

  dimension: domain {
    type: string
    sql: split_part(${email}, '@', 2) ;;
  }

  measure: count {
    type: count
    drill_fields: [adminname]
  }
}
