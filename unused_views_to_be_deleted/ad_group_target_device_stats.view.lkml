view: ad_group_target_device_stats {
  sql_table_name: `SA360.AdGroupTargetDeviceStats_21700000000010391`
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

  dimension: ad_words_conversion_value {
    type: number
    sql: ${TABLE}.adWordsConversionValue ;;
  }

  dimension: ad_words_conversions {
    type: number
    sql: ${TABLE}.adWordsConversions ;;
  }

  dimension: ad_words_view_through_conversions {
    type: number
    sql: ${TABLE}.adWordsViewThroughConversions ;;
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

  dimension: avg_cpc {
    type: number
    sql: ${TABLE}.avgCpc ;;
  }

  dimension: avg_cpm {
    type: number
    sql: ${TABLE}.avgCpm ;;
  }

  dimension: avg_pos {
    type: number
    sql: ${TABLE}.avgPos ;;
  }

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.campaignId ;;
  }

  dimension: clicks {
    type: number
    sql: ${TABLE}.clicks ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }

  dimension: ctr {
    type: number
    sql: ${TABLE}.ctr ;;
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

  dimension: gender_target_bid_modifier {
    type: number
    sql: ${TABLE}.genderTargetBidModifier ;;
  }

  dimension: gender_target_gender_type {
    type: string
    sql: ${TABLE}.genderTargetGenderType ;;
  }

  dimension: impr {
    type: number
    sql: ${TABLE}.impr ;;
  }

  dimension: location_target_bid_modifier {
    type: number
    sql: ${TABLE}.locationTargetBidModifier ;;
  }

  dimension: location_target_name {
    type: string
    sql: ${TABLE}.locationTargetName ;;
  }

  dimension: visits {
    type: number
    sql: ${TABLE}.visits ;;
  }

  measure: count {
    type: count
    drill_fields: [location_target_name]
  }
}
