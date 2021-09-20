view: p_campaign_rollup {
  derived_table: {
    sql: SELECT
        p_campaign.accountId  AS account_id,
        p_campaign.adRotation  AS ad_rotation,
        p_campaign.adWordsBidStrategy  AS ad_words_bid_strategy,
        p_campaign.advertiserId  AS advertiser_id,
        p_campaign.agencyId  AS agency_id,
        CASE WHEN p_campaign.bidStrategyInherited  THEN 'Yes' ELSE 'No' END
       AS bid_strategy_inherited,
        p_campaign.bingAdsBudgetType  AS bing_ads_budget_type,
        p_campaign.campaign  AS campaign,
        p_campaign.campaignId  AS id,
        p_campaign.campaignMobileBidAdjustment  AS mobile_bid_adjustment,
        p_campaign.campaignType  AS type,
        p_campaign.cityTargets  AS city_targets,
        p_campaign.countryTargets  AS country_targets,
        p_campaign.deliveryMethod  AS delivery_method,
        p_campaign.deviceTargets  AS device_targets,
        p_campaign.effectiveBidStrategyId  AS effective_bid_strategy_id,
        p_campaign.effectiveCityTargets  AS effective_city_targets,
        p_campaign.effectiveCountryTargets  AS effective_country_targets,
        p_campaign.effectiveDeviceTargets  AS effective_device_targets,
        p_campaign.effectiveMetroTargets  AS effective_metro_targets,
        p_campaign.effectiveProvinceTargets  AS effective_province_targets,
        p_campaign.engineStatus  AS engine_status,
        p_campaign.excludedCityTargets  AS excluded_city_targets,
        p_campaign.excludedCountryTargets  AS excluded_country_targets,
        p_campaign.excludedMetroTargets  AS excluded_metro_targets,
        p_campaign.excludedProvinceTargets  AS excluded_province_targets,
        p_campaign.keywordNearMatchEnabled  AS keyword_near_match_enabled,
        p_campaign.languageTargets  AS language_targets,
        p_campaign.metroTargets  AS metro_targets,
        p_campaign.monthlyBudget  AS monthly_budget,
        p_campaign.networkTarget  AS network_target,
        p_campaign.provinceTargets  AS province_targets,
        p_campaign.status  AS status,
        p_campaign.yahooGeoTargets  AS yahoo_geo_targets,
        p_campaign.yahooJapanBidStrategy  AS yahoo_japan_bid_strategy,
        p_campaign.campaignEngineId  AS engine_id,
        CAST(CAST(p_campaign.campaignStartDate  AS TIMESTAMP) AS DATE) AS start_date,
        CAST(CAST(p_campaign.campaignEndDate  AS TIMESTAMP) AS DATE) AS end_date
        FROM `solution-guide-repository.SA360.p_Campaign_21700000000010391`
           AS p_campaign

      GROUP BY 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: account_id {
    type: string
    sql: ${TABLE}.account_id ;;
  }

  dimension: ad_rotation {
    type: string
    sql: ${TABLE}.ad_rotation ;;
  }

  dimension: ad_words_bid_strategy {
    type: string
    sql: ${TABLE}.ad_words_bid_strategy ;;
  }

  dimension: advertiser_id {
    type: string
    sql: ${TABLE}.advertiser_id ;;
  }

  dimension: agency_id {
    type: string
    sql: ${TABLE}.agency_id ;;
  }

  dimension: bid_strategy_inherited {
    type: string
    sql: ${TABLE}.bid_strategy_inherited ;;
  }

  dimension: bing_ads_budget_type {
    type: string
    sql: ${TABLE}.bing_ads_budget_type ;;
  }

  dimension: campaign {
    type: string
    sql: ${TABLE}.campaign ;;
  }

  dimension: id {
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: mobile_bid_adjustment {
    type: number
    sql: ${TABLE}.mobile_bid_adjustment ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: city_targets {
    type: string
    sql: ${TABLE}.city_targets ;;
  }

  dimension: country_targets {
    type: string
    sql: ${TABLE}.country_targets ;;
  }

  dimension: delivery_method {
    type: string
    sql: ${TABLE}.delivery_method ;;
  }

  dimension: device_targets {
    type: string
    sql: ${TABLE}.device_targets ;;
  }

  dimension: effective_bid_strategy_id {
    type: string
    sql: ${TABLE}.effective_bid_strategy_id ;;
  }

  dimension: effective_city_targets {
    type: string
    sql: ${TABLE}.effective_city_targets ;;
  }

  dimension: effective_country_targets {
    type: string
    sql: ${TABLE}.effective_country_targets ;;
  }

  dimension: effective_device_targets {
    type: string
    sql: ${TABLE}.effective_device_targets ;;
  }

  dimension: effective_metro_targets {
    type: string
    sql: ${TABLE}.effective_metro_targets ;;
  }

  dimension: effective_province_targets {
    type: string
    sql: ${TABLE}.effective_province_targets ;;
  }

  dimension: engine_status {
    type: string
    sql: ${TABLE}.engine_status ;;
  }

  dimension: excluded_city_targets {
    type: string
    sql: ${TABLE}.excluded_city_targets ;;
  }

  dimension: excluded_country_targets {
    type: string
    sql: ${TABLE}.excluded_country_targets ;;
  }

  dimension: excluded_metro_targets {
    type: string
    sql: ${TABLE}.excluded_metro_targets ;;
  }

  dimension: excluded_province_targets {
    type: string
    sql: ${TABLE}.excluded_province_targets ;;
  }

  dimension: keyword_near_match_enabled {
    type: string
    sql: ${TABLE}.keyword_near_match_enabled ;;
  }

  dimension: language_targets {
    type: string
    sql: ${TABLE}.language_targets ;;
  }

  dimension: metro_targets {
    type: string
    sql: ${TABLE}.metro_targets ;;
  }

  dimension: monthly_budget {
    type: number
    sql: ${TABLE}.monthly_budget ;;
  }

  dimension: network_target {
    type: string
    sql: ${TABLE}.network_target ;;
  }

  dimension: province_targets {
    type: string
    sql: ${TABLE}.province_targets ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: yahoo_geo_targets {
    type: string
    sql: ${TABLE}.yahoo_geo_targets ;;
  }

  dimension: yahoo_japan_bid_strategy {
    type: string
    sql: ${TABLE}.yahoo_japan_bid_strategy ;;
  }

  dimension: engine_id {
    type: string
    sql: ${TABLE}.engine_id ;;
  }

  dimension: start_date {
    type: date
    sql: ${TABLE}.start_date ;;
  }

  dimension: end_date {
    type: date
    sql: ${TABLE}.end_date ;;
  }

  set: detail {
    fields: [
      account_id,
      ad_rotation,
      ad_words_bid_strategy,
      advertiser_id,
      agency_id,
      bid_strategy_inherited,
      bing_ads_budget_type,
      campaign,
      id,
      mobile_bid_adjustment,
      type,
      city_targets,
      country_targets,
      delivery_method,
      device_targets,
      effective_bid_strategy_id,
      effective_city_targets,
      effective_country_targets,
      effective_device_targets,
      effective_metro_targets,
      effective_province_targets,
      engine_status,
      excluded_city_targets,
      excluded_country_targets,
      excluded_metro_targets,
      excluded_province_targets,
      keyword_near_match_enabled,
      language_targets,
      metro_targets,
      monthly_budget,
      network_target,
      province_targets,
      status,
      yahoo_geo_targets,
      yahoo_japan_bid_strategy,
      engine_id,
      start_date,
      end_date
    ]
  }
}
