view: account {
  sql_table_name: `@{SA_360_SCHEMA}.Account_@{ADVERTISER_ID}`;;

  dimension: account_composite_key {
    primary_key: yes
    hidden: yes
    sql: ${account_id} || ' ' || ${_data_date} ;;
  }

  dimension_group: _data {
    hidden: yes
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._DATA_DATE ;;
  }

  dimension_group: _latest {
    hidden: yes
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._LATEST_DATE ;;
  }

  dimension: account {
    hidden: yes
    type: string
    sql: ${TABLE}.account ;;
  }

  dimension: account_currency_code {
    hidden: yes
    type: string
    sql: ${TABLE}.accountCurrencyCode ;;
  }

  dimension: account_engine_id {
    hidden: yes
    type: string
    sql: ${TABLE}.accountEngineId ;;
  }

  dimension: account_id {
    hidden: yes
    type: string
    sql: ${TABLE}.accountId ;;
  }

  dimension: account_time_zone {
    hidden: yes
    type: string
    sql: ${TABLE}.accountTimeZone ;;
  }

  dimension: account_type {
    label: "Engine Account"
    description: "Platform the Ad was shown on: Google AdWords, Bing Ads, Yahoo Japan Listing Ads, Yahoo Search Marketing, Yahoo Gemini, Baidu, or Comparison Shopping."
    type: string
    sql: ${TABLE}.accountType ;;
  }

  dimension: advertiser_id {
    hidden: yes
    type: string
    sql: ${TABLE}.advertiserId ;;
  }

  dimension: agency_id {
    hidden: yes
    type: string
    sql: ${TABLE}.agencyId ;;
  }

  dimension_group: creation_timestamp {
    hidden: yes
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
    hidden: yes
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
    hidden: yes
    type: string
    sql: ${TABLE}.status ;;
  }

}
