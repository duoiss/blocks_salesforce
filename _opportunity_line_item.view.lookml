- view: opportunity_line_item
  sql_table_name: SALESFORCE.OPPORTUNITY_LINE_ITEM
  fields:

  - dimension: id
    primary_key: true
    type: string
    sql: ${TABLE}.ID

  - dimension: ava_sfcore_details_c
    type: string
    sql: ${TABLE}.AVA_SFCORE_DETAILS_C

  - dimension: ava_sfcore_line_tax_c
    type: number
    sql: ${TABLE}.AVA_SFCORE_LINE_TAX_C

  - dimension: ava_sfcore_rate_c
    type: string
    sql: ${TABLE}.AVA_SFCORE_RATE_C

  - dimension: copy_of_line_item_acv_c
    type: number
    sql: ${TABLE}.COPY_OF_LINE_ITEM_ACV_C

  - dimension: copy_of_product_edition_number_c
    type: number
    sql: ${TABLE}.COPY_OF_PRODUCT_EDITION_NUMBER_C

  - dimension: copy_of_product_name_c
    type: string
    sql: ${TABLE}.COPY_OF_PRODUCT_NAME_C

  - dimension: copy_of_product_total_price_c
    type: number
    sql: ${TABLE}.COPY_OF_PRODUCT_TOTAL_PRICE_C

  - dimension: copy_of_product_type_c
    type: string
    sql: ${TABLE}.COPY_OF_PRODUCT_TYPE_C

  - dimension: copy_of_term_length_c
    type: number
    sql: ${TABLE}.COPY_OF_TERM_LENGTH_C

  - dimension: created_by_id
    type: string
    sql: ${TABLE}.CREATED_BY_ID

  - dimension: created_date
    type: string
    sql: ${TABLE}.CREATED_DATE

  - dimension: description
    type: string
    sql: ${TABLE}.DESCRIPTION

  - dimension: discount
    type: number
    sql: ${TABLE}.DISCOUNT

  - dimension: has_quantity_schedule
    type: yesno
    sql: ${TABLE}.HAS_QUANTITY_SCHEDULE

  - dimension: has_revenue_schedule
    type: yesno
    sql: ${TABLE}.HAS_REVENUE_SCHEDULE

  - dimension: has_schedule
    type: yesno
    sql: ${TABLE}.HAS_SCHEDULE

  - dimension: hide_on_order_form_c
    type: yesno
    sql: ${TABLE}.HIDE_ON_ORDER_FORM_C

  - dimension: is_deleted
    type: yesno
    sql: ${TABLE}.IS_DELETED

  - dimension: last_modified_by_id
    type: string
    sql: ${TABLE}.LAST_MODIFIED_BY_ID

  - dimension: last_modified_date
    type: string
    sql: ${TABLE}.LAST_MODIFIED_DATE

  - dimension: line_item_arr_c
    type: number
    sql: ${TABLE}.LINE_ITEM_ARR_C

  - dimension: line_item_protected_amount_renewed_c
    type: number
    sql: ${TABLE}.LINE_ITEM_PROTECTED_AMOUNT_RENEWED_C

  - dimension: line_type_c
    type: string
    sql: ${TABLE}.LINE_TYPE_C

  - dimension: list_price
    type: number
    sql: ${TABLE}.LIST_PRICE

  - dimension: name
    type: string
    sql: ${TABLE}.NAME

  - dimension: opportunity_id
    type: string
    # hidden: true
    sql: ${TABLE}.OPPORTUNITY_ID

  - dimension: pricebook_entry_id
    type: string
    # hidden: true
    sql: ${TABLE}.PRICEBOOK_ENTRY_ID

  - dimension: product_2_id
    type: string
    # hidden: true
    sql: ${TABLE}.PRODUCT_2_ID

  - dimension: product_code
    type: string
    sql: ${TABLE}.PRODUCT_CODE

  - dimension: quantity
    type: number
    sql: ${TABLE}.QUANTITY

  - dimension: renewal_c
    type: yesno
    sql: ${TABLE}.RENEWAL_C

  - dimension_group: service
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.SERVICE_DATE

  - dimension: sort_order
    type: string
    sql: ${TABLE}.SORT_ORDER

  - dimension_group: subscription_end_date_c
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.SUBSCRIPTION_END_DATE_C

  - dimension_group: subscription_start_date_c
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.SUBSCRIPTION_START_DATE_C

  - dimension: system_modstamp
    type: string
    sql: ${TABLE}.SYSTEM_MODSTAMP

  - dimension: total_price
    type: number
    sql: ${TABLE}.TOTAL_PRICE

  - dimension: trigger_wfr_c
    type: yesno
    sql: ${TABLE}.TRIGGER_WFR_C

  - dimension: unit_price
    type: number
    sql: ${TABLE}.UNIT_PRICE

#measures
  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - name
    - opportunity.id
    - opportunity.name
    - opportunity.stage_name
    - opportunity.forecast_category_name
    - pricebook_entry.id
    - pricebook_entry.name
    - product_2.id
    - product_2.name

