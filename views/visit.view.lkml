view: visit {
  sql_table_name: `SA360.Visit_21700000000010391`
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

  dimension: account {
    type: string
    sql: ${TABLE}.account ;;
  }

  dimension: account_id {
    type: string
    sql: ${TABLE}.accountId ;;
  }

  dimension: account_type {
    type: string
    sql: ${TABLE}.accountType ;;
  }

  dimension: ad_group_id {
    type: string
    sql: ${TABLE}.adGroupId ;;
  }

  dimension: ad_id {
    type: string
    sql: ${TABLE}.adId ;;
  }

  dimension: advertiser {
    type: string
    sql: ${TABLE}.advertiser ;;
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

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.campaignId ;;
  }

  dimension: device_segment {
    type: string
    sql: ${TABLE}.deviceSegment ;;
  }

  dimension: feed_id {
    type: string
    sql: ${TABLE}.feedId ;;
  }

  dimension: feed_item_id {
    type: string
    sql: ${TABLE}.feedItemId ;;
  }

  dimension: feed_type {
    type: string
    sql: ${TABLE}.feedType ;;
  }

  dimension: inventory_account_id {
    type: string
    sql: ${TABLE}.inventoryAccountId ;;
  }

  dimension: keyword_id {
    type: string
    sql: ${TABLE}.keywordId ;;
  }

  dimension: product_channel {
    type: string
    sql: ${TABLE}.productChannel ;;
  }

  dimension: product_country {
    type: string
    sql: ${TABLE}.productCountry ;;
  }

  dimension: product_group_id {
    type: string
    sql: ${TABLE}.productGroupId ;;
  }

  dimension: product_id {
    type: string
    sql: ${TABLE}.productId ;;
  }

  dimension: product_language {
    type: string
    sql: ${TABLE}.productLanguage ;;
  }

  dimension: product_store_id {
    type: string
    sql: ${TABLE}.productStoreId ;;
  }

  dimension: product_target_id {
    type: string
    sql: ${TABLE}.productTargetId ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension_group: visit {
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
    sql: ${TABLE}.visitDate ;;
  }

  dimension: visit_external_click_id {
    type: string
    sql: ${TABLE}.visitExternalClickId ;;
  }

  dimension: visit_id {
    type: string
    sql: ${TABLE}.visitId ;;
  }

  dimension: visit_network_type {
    type: string
    sql: ${TABLE}.visitNetworkType ;;
  }

  dimension: visit_referrer {
    type: string
    sql: ${TABLE}.visitReferrer ;;
  }

  dimension: visit_search_query {
    type: string
    sql: ${TABLE}.visitSearchQuery ;;
  }

  dimension_group: visit_timestamp {
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
    sql: ${TABLE}.visitTimestamp ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
