view: ad_group {
  sql_table_name: `SA360.AdGroup_21700000000010391`
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

  dimension: ad_group {
    type: string
    sql: ${TABLE}.adGroup ;;
  }

  dimension: ad_group_broad_max_cpc {
    type: number
    sql: ${TABLE}.adGroupBroadMaxCpc ;;
  }

  dimension: ad_group_content_max_cpc {
    type: number
    sql: ${TABLE}.adGroupContentMaxCpc ;;
  }

  dimension_group: ad_group_end {
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
    sql: ${TABLE}.adGroupEndDate ;;
  }

  dimension: ad_group_engine_id {
    type: string
    sql: ${TABLE}.adGroupEngineId ;;
  }

  dimension: ad_group_exact_max_cpc {
    type: number
    sql: ${TABLE}.adGroupExactMaxCpc ;;
  }

  dimension: ad_group_id {
    type: string
    sql: ${TABLE}.adGroupId ;;
  }

  dimension: ad_group_labels {
    type: string
    sql: ${TABLE}.adGroupLabels ;;
  }

  dimension: ad_group_mobile_bid_adjustment {
    type: number
    sql: ${TABLE}.adGroupMobileBidAdjustment ;;
  }

  dimension: ad_group_phrase_max_cpc {
    type: number
    sql: ${TABLE}.adGroupPhraseMaxCpc ;;
  }

  dimension: ad_group_search_max_cpc {
    type: number
    sql: ${TABLE}.adGroupSearchMaxCpc ;;
  }

  dimension_group: ad_group_start {
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
    sql: ${TABLE}.adGroupStartDate ;;
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

  dimension: bing_ads_ad_distributions {
    type: string
    sql: ${TABLE}.bingAdsAdDistributions ;;
  }

  dimension: bing_ads_language {
    type: string
    sql: ${TABLE}.bingAdsLanguage ;;
  }

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.campaignId ;;
  }

  dimension: city_targets {
    type: string
    sql: ${TABLE}.cityTargets ;;
  }

  dimension: country_targets {
    type: string
    sql: ${TABLE}.countryTargets ;;
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

  dimension: device_targets {
    type: string
    sql: ${TABLE}.deviceTargets ;;
  }

  dimension: effective_bid_strategy_id {
    type: string
    sql: ${TABLE}.effectiveBidStrategyId ;;
  }

  dimension: effective_city_targets {
    type: string
    sql: ${TABLE}.effectiveCityTargets ;;
  }

  dimension: effective_country_targets {
    type: string
    sql: ${TABLE}.effectiveCountryTargets ;;
  }

  dimension: effective_device_targets {
    type: string
    sql: ${TABLE}.effectiveDeviceTargets ;;
  }

  dimension: effective_labels {
    type: string
    sql: ${TABLE}.effectiveLabels ;;
  }

  dimension: effective_metro_targets {
    type: string
    sql: ${TABLE}.effectiveMetroTargets ;;
  }

  dimension: effective_province_targets {
    type: string
    sql: ${TABLE}.effectiveProvinceTargets ;;
  }

  dimension: engine_remarketing_list_target_all {
    type: yesno
    sql: ${TABLE}.engineRemarketingListTargetAll ;;
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

  dimension: metro_targets {
    type: string
    sql: ${TABLE}.metroTargets ;;
  }

  dimension: province_targets {
    type: string
    sql: ${TABLE}.provinceTargets ;;
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
