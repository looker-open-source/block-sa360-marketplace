view: p_account_rollup {
  derived_table: {
    sql: SELECT
        p_account.account  AS account,
        p_account.accountCurrencyCode  AS account_currency_code,
        p_account.accountEngineId  AS account_engine_id,
        p_account.accountId  AS account_id,
        p_account.accountTimeZone  AS account_time_zone,
        p_account.accountType  AS account_type,
        p_account.advertiserId  AS advertiser_id,
        p_account.agencyId  AS agency_id,
        p_account.status  AS status
      FROM `@{SA_360_SCHEMA}.p_Account_@{ADVERTISER_ID}`
           AS p_account

      GROUP BY 1,2,3,4,5,6,7,8,9
      ORDER BY 1
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: account {
    type: string
    sql: ${TABLE}.account ;;
  }

  dimension: account_currency_code {
    type: string
    sql: ${TABLE}.account_currency_code ;;
  }

  dimension: account_engine_id {
    type: string
    sql: ${TABLE}.account_engine_id ;;
  }

  dimension: account_id {
    type: string
    sql: ${TABLE}.account_id ;;
  }

  dimension: account_time_zone {
    type: string
    sql: ${TABLE}.account_time_zone ;;
  }

  dimension: account_type {
    type: string
    sql: ${TABLE}.account_type ;;
  }

  dimension: advertiser_id {
    type: string
    sql: ${TABLE}.advertiser_id ;;
  }

  dimension: agency_id {
    type: string
    sql: ${TABLE}.agency_id ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  set: detail {
    fields: [
      account,
      account_currency_code,
      account_engine_id,
      account_id,
      account_time_zone,
      account_type,
      advertiser_id,
      agency_id,
      status
    ]
  }
}
