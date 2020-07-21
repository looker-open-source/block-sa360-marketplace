view: p_conversion_21700000000010391 {
  sql_table_name: `SA360.p_Conversion_21700000000010391`
    ;;

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

  dimension: advertiser_conversion_id {
    type: string
    sql: ${TABLE}.advertiserConversionId ;;
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

  dimension: conversion_attribution_type {
    type: string
    sql: ${TABLE}.conversionAttributionType ;;
  }

  dimension_group: conversion {
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
    sql: ${TABLE}.conversionDate ;;
  }

  dimension: conversion_id {
    type: string
    sql: ${TABLE}.conversionId ;;
  }

  dimension_group: conversion_last_modified_timestamp {
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
    sql: ${TABLE}.conversionLastModifiedTimestamp ;;
  }

  dimension: conversion_quantity {
    type: number
    sql: ${TABLE}.conversionQuantity ;;
  }

  dimension: conversion_revenue {
    type: number
    sql: ${TABLE}.conversionRevenue ;;
  }

  dimension: conversion_search_term {
    type: string
    sql: ${TABLE}.conversionSearchTerm ;;
  }

  dimension_group: conversion_timestamp {
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
    sql: ${TABLE}.conversionTimestamp ;;
  }

  dimension: conversion_type {
    type: string
    sql: ${TABLE}.conversionType ;;
  }

  dimension: conversion_visit_external_click_id {
    type: string
    sql: ${TABLE}.conversionVisitExternalClickId ;;
  }

  dimension: conversion_visit_id {
    type: string
    sql: ${TABLE}.conversionVisitId ;;
  }

  dimension_group: conversion_visit_timestamp {
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
    sql: ${TABLE}.conversionVisitTimestamp ;;
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

  dimension: floodlight_activity {
    type: string
    sql: ${TABLE}.floodlightActivity ;;
  }

  dimension: floodlight_activity_id {
    type: string
    sql: ${TABLE}.floodlightActivityId ;;
  }

  dimension: floodlight_activity_tag {
    type: string
    sql: ${TABLE}.floodlightActivityTag ;;
  }

  dimension: floodlight_event_request_string {
    type: string
    sql: ${TABLE}.floodlightEventRequestString ;;
  }

  dimension: floodlight_group {
    type: string
    sql: ${TABLE}.floodlightGroup ;;
  }

  dimension: floodlight_group_conversion_type {
    type: string
    sql: ${TABLE}.floodlightGroupConversionType ;;
  }

  dimension: floodlight_group_id {
    type: string
    sql: ${TABLE}.floodlightGroupId ;;
  }

  dimension: floodlight_group_tag {
    type: string
    sql: ${TABLE}.floodlightGroupTag ;;
  }

  dimension: floodlight_order_id {
    type: string
    sql: ${TABLE}.floodlightOrderId ;;
  }

  dimension: floodlight_original_revenue {
    type: number
    sql: ${TABLE}.floodlightOriginalRevenue ;;
  }

  dimension: floodlight_referrer {
    type: string
    sql: ${TABLE}.floodlightReferrer ;;
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

  measure: count {
    type: count
    drill_fields: []
  }
}
