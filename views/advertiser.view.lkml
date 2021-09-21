view: advertiser {
  sql_table_name: `@{SA_360_SCHEMA}.Advertiser_@{ADVERTISER_ID}`;;

  dimension: advertiser_composite_key {
    primary_key: yes
    hidden:  yes
    sql: ${advertiser_id} || ' ' || ${_data_date} ;;
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

  dimension: advertiser {
    type: string
    sql: ${TABLE}.advertiser ;;
  }

  dimension: advertiser_currency_code {
    type: string
    sql: ${TABLE}.advertiserCurrencyCode ;;
  }

  dimension: advertiser_id {
    type: string
    sql: ${TABLE}.advertiserId ;;
  }

  dimension: agency {
    type: string
    sql: ${TABLE}.agency ;;
  }

  dimension: agency_id {
    type: string
    sql: ${TABLE}.agencyId ;;
  }

  dimension_group: creation {
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

  dimension: dfa_advertiser_id {
    group_label: "DoubleClick for Advertisers"
    type: string
    sql: ${TABLE}.dfaAdvertiserId ;;
  }

  dimension: dfa_network_id {
    group_label: "DoubleClick for Advertisers"
    type: string
    sql: ${TABLE}.dfaNetworkId ;;
  }

  dimension: dfa_network_time_zone {
    group_label: "DoubleClick for Advertisers"
    type: string
    sql: ${TABLE}.dfaNetworkTimeZone ;;
  }

  dimension_group: last_modified {
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
    hidden: yes
    type: count
    drill_fields: []
  }
}
