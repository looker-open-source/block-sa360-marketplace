view: ad_group_target_floodlight_and_device_stats {
  sql_table_name: `SA360.AdGroupTargetFloodlightAndDeviceStats_21700000000010391`
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

  dimension: ad_group_target_id {
    type: string
    sql: ${TABLE}.adGroupTargetId ;;
  }

  dimension: advertiser_id {
    type: string
    sql: ${TABLE}.advertiserId ;;
  }

  dimension: age_target_age_range {
    type: string
    sql: ${TABLE}.ageTargetAgeRange ;;
  }

  dimension: age_target_bid_modifier {
    type: number
    sql: ${TABLE}.ageTargetBidModifier ;;
  }

  dimension: agency_id {
    type: string
    sql: ${TABLE}.agencyId ;;
  }

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.campaignId ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}.date ;;
  }

  dimension: device_segment {
    type: string
    sql: ${TABLE}.deviceSegment ;;
  }

  dimension: dfa_actions {
    type: number
    sql: ${TABLE}.dfaActions ;;
  }

  dimension: dfa_revenue {
    type: number
    sql: ${TABLE}.dfaRevenue ;;
  }

  dimension: dfa_transactions {
    type: number
    sql: ${TABLE}.dfaTransactions ;;
  }

  dimension: dfa_weighted_actions {
    type: number
    sql: ${TABLE}.dfaWeightedActions ;;
  }

  dimension: dynamic_search_ads_target_conditions {
    type: string
    sql: ${TABLE}.dynamicSearchAdsTargetConditions ;;
  }

  dimension: dynamic_search_ads_target_coverage {
    type: number
    sql: ${TABLE}.dynamicSearchAdsTargetCoverage ;;
  }

  dimension: dynamic_search_ads_target_cpc_bid {
    type: number
    value_format_name: id
    sql: ${TABLE}.dynamicSearchAdsTargetCpcBid ;;
  }

  dimension: dynamic_search_ads_target_landing_page_url {
    type: string
    sql: ${TABLE}.dynamicSearchAdsTargetLandingPageUrl ;;
  }

  dimension: engine_remarketing_list {
    type: string
    sql: ${TABLE}.engineRemarketingList ;;
  }

  dimension: engine_remarketing_list_bid_modifier {
    type: number
    sql: ${TABLE}.engineRemarketingListBidModifier ;;
  }

  dimension: floodlight_activity_id {
    type: string
    sql: ${TABLE}.floodlightActivityId ;;
  }

  dimension: floodlight_group_id {
    type: string
    sql: ${TABLE}.floodlightGroupId ;;
  }

  dimension: gender_target_bid_modifier {
    type: number
    sql: ${TABLE}.genderTargetBidModifier ;;
  }

  dimension: gender_target_gender_type {
    type: string
    sql: ${TABLE}.genderTargetGenderType ;;
  }

  dimension: location_target_bid_modifier {
    type: number
    sql: ${TABLE}.locationTargetBidModifier ;;
  }

  dimension: location_target_name {
    type: string
    sql: ${TABLE}.locationTargetName ;;
  }

  measure: count {
    type: count
    drill_fields: [location_target_name]
  }
}
