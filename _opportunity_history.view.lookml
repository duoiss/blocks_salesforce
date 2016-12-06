- view: opportunity_history
  sql_table_name: SALESFORCE.OPPORTUNITY_FIELD_HISTORY
  fields:

  - dimension: id
    primary_key: true
    type: string
    sql: ${TABLE}.ID

  - dimension: created_by_id
    type: string
    sql: ${TABLE}.CREATED_BY_ID

  - dimension: created_date
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATED_DATE

  - dimension: field
    type: string
    sql: ${TABLE}.FIELD

  - dimension: is_deleted
    type: yesno
    sql: ${TABLE}.IS_DELETED

  - dimension: new_value
    type: number
    sql: ${TABLE}.NEW_VALUE

  - dimension: old_value
    type: number
    sql: ${TABLE}.OLD_VALUE

  - dimension: opportunity_id
    type: string
    # hidden: true
    sql: ${TABLE}.OPPORTUNITY_ID

  - measure: count
    type: count
    drill_fields: [id, opportunity.id, opportunity.name, opportunity.stage_name, opportunity.forecast_category_name]

