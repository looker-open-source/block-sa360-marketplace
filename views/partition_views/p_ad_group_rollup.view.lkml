view: p_ad_group_rollup {
  derived_table: {
    sql: SELECT
        p_ad_group.adGroup  AS ad_group,
        p_ad_group.adGroupBroadMaxCpc  AS ad_group_broad_max_cpc,
        p_ad_group.adGroupContentMaxCpc  AS ad_group_content_max_cpc,
        p_ad_group.adGroupEngineId  AS ad_group_engine_id,
        p_ad_group.adGroupExactMaxCpc  AS ad_group_exact_max_cpc,
        p_ad_group.adGroupId  AS ad_group_id,
        p_ad_group.adGroupLabels  AS ad_group_labels,
        p_ad_group.adGroupMobileBidAdjustment  AS ad_group_mobile_bid_adjustment,
        p_ad_group.adGroupPhraseMaxCpc  AS ad_group_phrase_max_cpc,
        p_ad_group.adGroupSearchMaxCpc  AS ad_group_search_max_cpc,
        p_ad_group.advertiserId  AS advertiser_id,
        p_ad_group.agencyId  AS agency_id,
        CASE WHEN p_ad_group.bidStrategyInherited  THEN 'Yes' ELSE 'No' END
       AS bid_strategy_inherited,
        p_ad_group.bingAdsAdDistributions  AS bing_ads_ad_distributions,
        p_ad_group.bingAdsLanguage  AS bing_ads_language,
        p_ad_group.campaignId  AS campaign_id,
        p_ad_group.cityTargets  AS city_targets,
        p_ad_group.countryTargets  AS country_targets,
        p_ad_group.deviceTargets  AS device_targets,
        p_ad_group.effectiveBidStrategyId  AS effective_bid_strategy_id,
        p_ad_group.effectiveCityTargets  AS effective_city_targets,
        p_ad_group.effectiveCountryTargets  AS effective_country_targets,
        p_ad_group.effectiveDeviceTargets  AS effective_device_targets,
        p_ad_group.effectiveLabels  AS effective_labels,
        p_ad_group.effectiveMetroTargets  AS effective_metro_targets,
        p_ad_group.effectiveProvinceTargets  AS effective_province_targets,
        CASE WHEN p_ad_group.engineRemarketingListTargetAll  THEN 'Yes' ELSE 'No' END
       AS engine_remarketing_list_target_all,
        p_ad_group.engineStatus  AS engine_status,
        p_ad_group.metroTargets  AS metro_targets,
        p_ad_group.provinceTargets  AS province_targets,
        p_ad_group.status  AS status,
        p_ad_group.accountId  AS account_id
        FROM (SELECT *, RANK() OVER (PARTITION BY adGroupId ORDER BY lastModifiedTimestamp DESC) AS rank
      FROM `solution-guide-repository.SA360.p_AdGroup_21700000000010391`)
           AS p_ad_group
           WHERE rank = 1
      GROUP BY 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,lastModifiedTimestamp
      ORDER BY 1
 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: ad_group {
    type: string
    sql: ${TABLE}.ad_group ;;
  }

  dimension: ad_group_broad_max_cpc {
    type: number
    sql: ${TABLE}.ad_group_broad_max_cpc ;;
  }

  dimension: ad_group_content_max_cpc {
    type: number
    sql: ${TABLE}.ad_group_content_max_cpc ;;
  }

  dimension: ad_group_engine_id {
    type: string
    sql: ${TABLE}.ad_group_engine_id ;;
  }

  dimension: ad_group_exact_max_cpc {
    type: number
    sql: ${TABLE}.ad_group_exact_max_cpc ;;
  }

  dimension: ad_group_id {
    type: string
    sql: ${TABLE}.ad_group_id ;;
  }

  dimension: ad_group_labels {
    type: string
    sql: ${TABLE}.ad_group_labels ;;
  }

  dimension: ad_group_mobile_bid_adjustment {
    type: number
    sql: ${TABLE}.ad_group_mobile_bid_adjustment ;;
  }

  dimension: ad_group_phrase_max_cpc {
    type: number
    sql: ${TABLE}.ad_group_phrase_max_cpc ;;
  }

  dimension: ad_group_search_max_cpc {
    type: number
    sql: ${TABLE}.ad_group_search_max_cpc ;;
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

  dimension: bing_ads_ad_distributions {
    type: string
    sql: ${TABLE}.bing_ads_ad_distributions ;;
  }

  dimension: bing_ads_language {
    type: string
    sql: ${TABLE}.bing_ads_language ;;
  }

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: city_targets {
    type: string
    sql: ${TABLE}.city_targets ;;
  }

  dimension: country_targets {
    type: string
    sql: ${TABLE}.country_targets ;;
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

  dimension: effective_labels {
    type: string
    sql: ${TABLE}.effective_labels ;;
  }

  dimension: effective_metro_targets {
    type: string
    sql: ${TABLE}.effective_metro_targets ;;
  }

  dimension: effective_province_targets {
    type: string
    sql: ${TABLE}.effective_province_targets ;;
  }

  dimension: engine_remarketing_list_target_all {
    type: string
    sql: ${TABLE}.engine_remarketing_list_target_all ;;
  }

  dimension: engine_status {
    type: string
    sql: ${TABLE}.engine_status ;;
  }

  dimension: metro_targets {
    type: string
    sql: ${TABLE}.metro_targets ;;
  }

  dimension: province_targets {
    type: string
    sql: ${TABLE}.province_targets ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: account_id {
    type: string
    sql: ${TABLE}.account_id ;;
  }

  set: detail {
    fields: [
      ad_group,
      ad_group_broad_max_cpc,
      ad_group_content_max_cpc,
      ad_group_engine_id,
      ad_group_exact_max_cpc,
      ad_group_id,
      ad_group_labels,
      ad_group_mobile_bid_adjustment,
      ad_group_phrase_max_cpc,
      ad_group_search_max_cpc,
      advertiser_id,
      agency_id,
      bid_strategy_inherited,
      bing_ads_ad_distributions,
      bing_ads_language,
      campaign_id,
      city_targets,
      country_targets,
      device_targets,
      effective_bid_strategy_id,
      effective_city_targets,
      effective_country_targets,
      effective_device_targets,
      effective_labels,
      effective_metro_targets,
      effective_province_targets,
      engine_remarketing_list_target_all,
      engine_status,
      metro_targets,
      province_targets,
      status,
      account_id
    ]
  }
}
