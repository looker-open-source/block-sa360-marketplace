view: product_group {
  sql_table_name: `SA360.ProductGroup_21700000000010391`
    ;;

  dimension_group: _data {
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

  dimension: account_id {
    type: string
    sql: ${TABLE}.accountId ;;
  }

  dimension: ad_group_id {
    type: string
    sql: ${TABLE}.adGroupId ;;
  }

  dimension: advertiser_id {
    type: string
    sql: ${TABLE}.advertiserId ;;
  }

  dimension: agency_id {
    type: string
    sql: ${TABLE}.agencyId ;;
  }

  dimension: bid_strategy_inherited {
    type: yesno
    sql: ${TABLE}.bidStrategyInherited ;;
  }

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.campaignId ;;
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

  dimension: effective_bid_strategy {
    type: string
    sql: ${TABLE}.effectiveBidStrategy ;;
  }

  dimension: effective_bid_strategy_id {
    type: string
    sql: ${TABLE}.effectiveBidStrategyId ;;
  }

  dimension: effective_labels {
    type: string
    sql: ${TABLE}.effectiveLabels ;;
  }

  dimension: effective_product_group_max_cpc {
    type: number
    sql: ${TABLE}.effectiveProductGroupMaxCpc ;;
  }

  dimension: engine_status {
    type: string
    sql: ${TABLE}.engineStatus ;;
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

  dimension: product_group {
    type: string
    sql: ${TABLE}.productGroup ;;
  }

  dimension: product_group_clickserver_url {
    type: string
    sql: ${TABLE}.productGroupClickserverUrl ;;
  }

  dimension: product_group_id {
    type: string
    sql: ${TABLE}.productGroupId ;;
  }

  dimension: product_group_landing_page {
    type: string
    sql: ${TABLE}.productGroupLandingPage ;;
  }

  dimension: product_group_max_bid {
    type: number
    value_format_name: id
    sql: ${TABLE}.productGroupMaxBid ;;
  }

  dimension: product_group_max_cpc {
    type: number
    sql: ${TABLE}.productGroupMaxCpc ;;
  }

  dimension: product_group_min_bid {
    type: number
    value_format_name: id
    sql: ${TABLE}.productGroupMinBid ;;
  }

  dimension: product_group_partition_type {
    type: string
    sql: ${TABLE}.productGroupPartitionType ;;
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
