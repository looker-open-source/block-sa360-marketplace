view: campaign {
  sql_table_name: `SA360.Campaign_21700000000010391`
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
    hidden:  yes
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

  dimension: ad_rotation {
    type: string
    sql: ${TABLE}.adRotation ;;
  }

  dimension: ad_words_bid_strategy {
    type: string
    sql: ${TABLE}.adWordsBidStrategy ;;
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

  dimension: bing_ads_budget_type {
    type: string
    sql: ${TABLE}.bingAdsBudgetType ;;
  }

  dimension: campaign {
    type: string
    sql: ${TABLE}.campaign ;;
    link: {
      url: "https://googlemarscisandbox.cloud.looker.com/dashboards/23?Campaign%20Name={{value}}"
      label: "Campaign Performance Dashboard"
    }
  }

  dimension_group: campaign_end {
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
    sql: ${TABLE}.campaignEndDate ;;
  }

  dimension: is_active_now {
    type: yesno
    sql: ${campaign_end_date} >= CURRENT_DATE() ;;
  }

  dimension: campaign_engine_id {
    description: "ID of the campaign in the external engine account."
    type: string
    sql: ${TABLE}.campaignEngineId ;;
  }

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.campaignId ;;
  }

  dimension: campaign_labels {
    type: string
    sql: ${TABLE}.campaignLabels ;;
  }

  dimension: campaign_mobile_bid_adjustment {
    type: number
    sql: ${TABLE}.campaignMobileBidAdjustment ;;
  }

  dimension_group: campaign_start {
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
    sql: ${TABLE}.campaignStartDate ;;
  }

  dimension: weeks_since_campaign_start {
    label: "Weeks Since Campaign Start"
    type: number
    sql: DATE_DIFF(CURRENT_DATE(), ${campaign_start_date},  WEEK)  ;;
  }

  dimension: campaign_type {
    type: string
    sql: ${TABLE}.campaignType ;;
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

  dimension: daily_budget {
    value_format_name: usd
    type: number
    sql: ${TABLE}.dailyBudget ;;
  }

  dimension: delivery_method {
    type: string
    sql: ${TABLE}.deliveryMethod ;;
  }

  dimension: device_targets {
    group_label: "Targets"
    type: string
    sql: ${TABLE}.deviceTargets ;;
  }

  dimension: effective_bid_strategy_id {
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

  dimension: engine_status {
    description: "Additional status of the campaign in the external engine account."
    type: string
    sql: ${TABLE}.engineStatus ;;
  }

  dimension: excluded_city_targets {
    group_label: "Targets"
    type: string
    sql: ${TABLE}.excludedCityTargets ;;
  }

  dimension: excluded_country_targets {
    group_label: "Targets"
    type: string
    sql: ${TABLE}.excludedCountryTargets ;;
  }

  dimension: excluded_metro_targets {
    group_label: "Targets"
    type: string
    sql: ${TABLE}.excludedMetroTargets ;;
  }

  dimension: excluded_province_targets {
    group_label: "Targets"
    type: string
    sql: ${TABLE}.excludedProvinceTargets ;;
  }

  dimension: is_keyword_near_match_enabled {
    type: yesno
    sql: CASE WHEN ${TABLE}.keywordNearMatchEnabled = 'Enabled' THEN TRUE ELSE FALSE END;;
  }

  dimension: language_targets {
    group_label: "Targets"
    type: string
    sql: ${TABLE}.languageTargets ;;
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

  dimension: monthly_budget {
    type: number
    value_format_name: usd
    sql: ${TABLE}.monthlyBudget ;;
  }

  dimension: network_target {
    group_label: "Targets"
    type: string
    sql: ${TABLE}.networkTarget ;;
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

  dimension: yahoo_geo_targets {
    group_label: "Targets"
    type: string
    sql: ${TABLE}.yahooGeoTargets ;;
  }

  dimension: yahoo_japan_bid_strategy {
    type: string
    sql: ${TABLE}.yahooJapanBidStrategy ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
