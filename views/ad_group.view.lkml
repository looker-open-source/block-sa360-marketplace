view: ad_group {
  sql_table_name: `SA360.AdGroup_21700000000010391`
    ;;

  dimension: ad_group_composite_key {
    hidden:  yes
    primary_key: yes
    sql: ${ad_group_id} || ' ' || ${_data_date} ;;
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

  dimension: account_id {
    type: string
    sql: ${TABLE}.accountId ;;
  }

  dimension: ad_group {
    type: string
    sql: ${TABLE}.adGroup ;;
    link: {
      url: "https://searchads.google.com/ds/cm/cm?#adgroups.ay={{ campaign.agency_id._value }};av={{ campaign.advertiser_id._value }};ea={{ account.account_engine_id._value }};c={{ campaign.campaign_id._value }};ag={{ ad_group.ad_group_id._value }}"
      label: "View on SA360"
      icon_url: "https://storage.googleapis.com/support-kms-prod/kNxlBgSkVI3TZFe77PovWkoh0P9K7Vw1ovEJ"
    }
  }

  dimension: ad_group_broad_max_cpc {
    description: "Default bid for broad match search keywords in this ad group (Bing Ads only)."
    type: number
    sql: ${TABLE}.adGroupBroadMaxCpc ;;
  }

  dimension: ad_group_content_max_cpc {
    description: "Default bid for content keywords in this ad group."
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
    hidden: yes
    type: string
    sql: ${TABLE}.adGroupEngineId ;;
  }

  dimension: ad_group_exact_max_cpc {
    description: "Default bid for exact match keywords in this ad group (Bing Ads only)."
    type: number
    sql: ${TABLE}.adGroupExactMaxCpc ;;
  }

  dimension: ad_group_id {
    hidden: yes
    type: string
    sql: ${TABLE}.adGroupId ;;
  }

  dimension: ad_group_labels {
    type: string
    sql: ${TABLE}.adGroupLabels ;;
  }

  dimension: ad_group_mobile_bid_adjustment {
    description: "The percentage by which bids are adjusted for mobile."
    type: number
    sql: ${TABLE}.adGroupMobileBidAdjustment ;;
  }

  dimension: ad_group_phrase_max_cpc {
    description: "Default bid for phrasematch search keywords in this ad group (Bing Ads only)."
    type: number
    sql: ${TABLE}.adGroupPhraseMaxCpc ;;
  }

  dimension: ad_group_search_max_cpc {
    description: "Default bid for search keywords in this ad group."
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
    description: "Ad distribution channels used by Bing Ads ad groups; a combination of Search and Content."
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
    group_label: "Targets"
    type: string
    sql: ${TABLE}.cityTargets ;;
  }

  dimension: country_targets {
    group_label: "Targets"
    type: string
    sql: ${TABLE}.countryTargets ;;
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

  dimension: device_targets {
    group_label: "Targets"
    type: string
    sql: ${TABLE}.deviceTargets ;;
  }

  dimension: effective_bid_strategy_id {
    hidden: yes
    type: string
    sql: ${TABLE}.effectiveBidStrategyId ;;
  }

  dimension: effective_city_targets {
    group_label: "Targets"
    type: string
    sql: ${TABLE}.effectiveCityTargets ;;
  }

  dimension: effective_country_targets {
    group_label: "Targets"
    type: string
    sql: ${TABLE}.effectiveCountryTargets ;;
  }

  dimension: effective_device_targets {
    group_label: "Targets"
    type: string
    sql: ${TABLE}.effectiveDeviceTargets ;;
  }

  dimension: effective_labels {
    type: string
    sql: ${TABLE}.effectiveLabels ;;
  }

  dimension: effective_metro_targets {
    group_label: "Targets"
    type: string
    sql: ${TABLE}.effectiveMetroTargets ;;
  }

  dimension: effective_province_targets {
    group_label: "Targets"
    type: string
    sql: ${TABLE}.effectiveProvinceTargets ;;
  }

  dimension: is_engine_remarketing_list_target_all {
    description: "Indicates if the ad group only uses remarketing targets to adjust bids."
    type: yesno
    sql: ${TABLE}.engineRemarketingListTargetAll ;;
  }

  dimension: engine_status {
    description: "Additional status of the ad group in the external engine account."
    type: string
    sql: ${TABLE}.engineStatus ;;
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

  dimension: metro_targets {
    group_label: "Targets"
    type: string
    sql: ${TABLE}.metroTargets ;;
  }

  dimension: province_targets {
    group_label: "Targets"
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
