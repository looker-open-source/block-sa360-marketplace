view: ad_group_target {
  sql_table_name: `SA360.AdGroupTarget_21700000000010391`
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

  dimension: ad_group {
    type: string
    sql: ${TABLE}.adGroup ;;
  }

  dimension: ad_group_id {
    type: string
    sql: ${TABLE}.adGroupId ;;
  }

  dimension: ad_group_status {
    type: string
    sql: ${TABLE}.adGroupStatus ;;
  }

  dimension: ad_group_target_id {
    type: string
    sql: ${TABLE}.adGroupTargetId ;;
  }

  dimension: advertiser {
    type: string
    sql: ${TABLE}.advertiser ;;
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

  dimension: agency {
    type: string
    sql: ${TABLE}.agency ;;
  }

  dimension: agency_id {
    type: string
    sql: ${TABLE}.agencyId ;;
  }

  dimension: campaign {
    type: string
    sql: ${TABLE}.campaign ;;
  }

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.campaignId ;;
  }

  dimension: campaign_status {
    type: string
    sql: ${TABLE}.campaignStatus ;;
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

  dimension: location_target_bid_modifier {
    type: number
    sql: ${TABLE}.locationTargetBidModifier ;;
  }

  dimension: location_target_name {
    type: string
    sql: ${TABLE}.locationTargetName ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  measure: count {
    type: count
    drill_fields: [location_target_name]
  }
}
