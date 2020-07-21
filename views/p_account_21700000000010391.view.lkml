view: p_account_21700000000010391 {
  sql_table_name: `SA360.p_Account_21700000000010391`
    ;;

  dimension: account {
    type: string
    sql: ${TABLE}.account ;;
  }

  dimension: account_currency_code {
    type: string
    sql: ${TABLE}.accountCurrencyCode ;;
  }

  dimension: account_engine_id {
    type: string
    sql: ${TABLE}.accountEngineId ;;
  }

  dimension: account_id {
    type: string
    sql: ${TABLE}.accountId ;;
  }

  dimension: account_time_zone {
    type: string
    sql: ${TABLE}.accountTimeZone ;;
  }

  dimension: account_type {
    type: string
    sql: ${TABLE}.accountType ;;
  }

  dimension: advertiser_id {
    type: string
    sql: ${TABLE}.advertiserId ;;
  }

  dimension: agency_id {
    type: string
    sql: ${TABLE}.agencyId ;;
  }

  dimension_group: creation_timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.creationTimestamp ;;
  }

  dimension_group: last_modified_timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.lastModifiedTimestamp ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
