
- view: andrew_job_moves
  derived_table:
    sql: |
      SELECT 
        account.name AS "account.name",
        account.akey_c AS "account.akey",
          contact.id AS "contact.id",
        contact.first_name AS "contact.first_name",
        contact.last_name AS "contact.last_name",
        contact.email AS "contact.email",
        contact.mailing_city AS "contact.mailing_city",
        contact.mailing_state AS "contact.mailing_state",
        contact.mailing_street AS "contact.mailing_street",
        contact.mobile_phone AS "contact.mobile_phone",
        contact.mailing_postal_code AS "contact.mailing_postal_code",
        CASE WHEN contact.admin_c THEN 'Yes' ELSE 'No' END
       AS "contact.is_admin",
        TO_CHAR(TO_DATE(account_usage.LAST_AUTHENTICATION_C), 'YYYY-MM-DD') AS "account_usage.last_authentication_date",
        account.id AS "account.id",
        account_owner.name AS "account_owner.name",
        account.DUO_EDITION_C AS "account.duo_edition",
        account_usage.DUO_PLAN_USERS_C AS "account_usage.duo_plan_users",
        account_usage.SIGNUP_NUM_USERS_C AS "account_usage.signup_num_users",
        account_usage.USERS_C AS "account_usage.users",
        account_usage.USERS_ACTIVE_OVER_30_DAYS_C AS "account_usage.users_active_over_30_days",
        account_usage.USERS_ACTIVE_OVER_7_DAYS_C AS "account_usage.users_active_over_7_days",
        account.number_of_employees AS "account.number_of_employees",
        account.industry AS "account.industry",
        TO_CHAR(TO_DATE(account.last_activity_date), 'YYYY-MM-DD') AS "account.last_activity_date"
      FROM salesforce.account AS account
      LEFT JOIN salesforce.contact AS contact ON account.id = contact.account_id
      LEFT JOIN salesforce.user AS account_owner ON account.owner_id = account_owner.id
      LEFT JOIN SALESFORCE.ACCOUNT AS account_usage ON account.id = account_usage.id
      
      WHERE contact.admin_c AND (account_usage.LAST_AUTHENTICATION_C IS NOT NULL) AND (NOT account.is_deleted)
      GROUP BY 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24
      ORDER BY 12 DESC

  fields:
  - measure: count
    type: count
    drill_fields: detail*

  - dimension: account_name
    type: string
    sql: ${TABLE}."account.name"

  - dimension: account_akey
    type: string
    sql: ${TABLE}."account.akey"

  - dimension: contact_id
    type: string
    sql: ${TABLE}."contact.id"

  - dimension: contact_first_name
    type: string
    sql: ${TABLE}."contact.first_name"

  - dimension: contact_last_name
    type: string
    sql: ${TABLE}."contact.last_name"

  - dimension: contact_email
    type: string
    sql: ${TABLE}."contact.email"

  - dimension: contact_mailing_city
    type: string
    sql: ${TABLE}."contact.mailing_city"

  - dimension: contact_mailing_state
    type: string
    sql: ${TABLE}."contact.mailing_state"

  - dimension: contact_mailing_street
    type: string
    sql: ${TABLE}."contact.mailing_street"

  - dimension: contact_mobile_phone
    type: string
    sql: ${TABLE}."contact.mobile_phone"

  - dimension: contact_mailing_postal_code
    type: string
    sql: ${TABLE}."contact.mailing_postal_code"

  - dimension: contact_is_admin
    type: string
    sql: ${TABLE}."contact.is_admin"

  - dimension: account_usage_last_authentication_date
    type: string
    sql: ${TABLE}."account_usage.last_authentication_date"

  - dimension: account_id
    type: string
    sql: ${TABLE}."account.id"

  - dimension: account_owner_name
    type: string
    sql: ${TABLE}."account_owner.name"

  - dimension: account_duo_edition
    type: string
    sql: ${TABLE}."account.duo_edition"

  - dimension: account_usage_duo_plan_users
    type: number
    sql: ${TABLE}."account_usage.duo_plan_users"

  - dimension: account_usage_signup_num_users
    type: string
    sql: ${TABLE}."account_usage.signup_num_users"

  - dimension: account_usage_users
    type: number
    sql: ${TABLE}."account_usage.users"

  - dimension: "account_usage_users_active_over_30_days"
    type: number
    sql: ${TABLE}."account_usage.users_active_over_30_days"

  - dimension: "account_usage_users_active_over_7_days"
    type: number
    sql: ${TABLE}."account_usage.users_active_over_7_days"

  - dimension: account_number_of_employees
    type: string
    sql: ${TABLE}."account.number_of_employees"

  - dimension: account_industry
    type: string
    sql: ${TABLE}."account.industry"

  - dimension: account_last_activity_date
    type: string
    sql: ${TABLE}."account.last_activity_date"

  sets:
    detail:
      - account_name
      - account_akey
      - contact_id
      - contact_first_name
      - contact_last_name
      - contact_email
      - contact_mailing_city
      - contact_mailing_state
      - contact_mailing_street
      - contact_mobile_phone
      - contact_mailing_postal_code
      - contact_is_admin
      - account_usage_last_authentication_date
      - account_id
      - account_owner_name
      - account_duo_edition
      - account_usage_duo_plan_users
      - account_usage_signup_num_users
      - account_usage_users
      - account_usage_users_active_over_30_days
      - account_usage_users_active_over_7_days
      - account_number_of_employees
      - account_industry
      - account_last_activity_date

