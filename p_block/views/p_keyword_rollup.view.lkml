view: p_keyword_rollup {
  derived_table: {
    sql: SELECT
        p_keyword.accountId  AS account_id,
        p_keyword.adGroupId  AS ad_group_id,
        p_keyword.advertiserId  AS advertiser_id,
        p_keyword.agencyId  AS agency_id,
        CASE WHEN p_keyword.bidStrategyInherited  THEN 'Yes' ELSE 'No' END
       AS bid_strategy_inherited,
        p_keyword.campaignId  AS campaign_id,
        CAST(p_keyword.creationTimestamp  AS DATE) AS creation_timestamp_date,
        p_keyword.effectiveBidStrategyId  AS effective_bid_strategy_id,
        p_keyword.effectiveKeywordMaxCpc  AS effective_keyword_max_cpc,
        p_keyword.engineStatus  AS engine_status,
        CASE WHEN p_keyword.isDisplayKeyword  THEN 'Yes' ELSE 'No' END
       AS p_keyword_is_display_keyword,
        p_keyword.keywordClickserverUrl  AS keyword_clickserver_url,
        p_keyword.keywordEngineId  AS p_keyword_keyword_engine_id,
        p_keyword.keywordId  AS keyword_id,
        p_keyword.keywordLabels  AS keyword_labels,
        p_keyword.keywordLandingPage  AS keyword_landing_page,
        p_keyword.keywordMatchType  AS keyword_match_type,
        p_keyword.keywordMaxBid  AS keyword_max_bid,
        p_keyword.keywordMaxCpc  AS keyword_max_cpc,
        p_keyword.keywordMinBid  AS keyword_min_bid,
        p_keyword.keywordText  AS keyword_text,
        p_keyword.keywordUrlParams  AS keyword_url_params,
        p_keyword.qualityScoreCurrent  AS quality_score_current,
        p_keyword.status  AS status
      FROM `@{SA_360_SCHEMA}.p_Keyword_@{ADVERTISER_ID}`
           AS p_keyword

      GROUP BY 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24
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

  dimension: ad_group_id {
    type: string
    sql: ${TABLE}.ad_group_id ;;
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

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: creation_timestamp_date {
    type: date
    sql: ${TABLE}.creation_timestamp_date ;;
  }

  dimension: effective_bid_strategy_id {
    type: string
    sql: ${TABLE}.effective_bid_strategy_id ;;
  }

  dimension: effective_keyword_max_cpc {
    type: number
    sql: ${TABLE}.effective_keyword_max_cpc ;;
  }

  dimension: engine_status {
    type: string
    sql: ${TABLE}.engine_status ;;
  }

  dimension: p_keyword_is_display_keyword {
    type: string
    sql: ${TABLE}.p_keyword_is_display_keyword ;;
  }

  dimension: keyword_clickserver_url {
    type: string
    sql: ${TABLE}.keyword_clickserver_url ;;
  }

  dimension: p_keyword_keyword_engine_id {
    type: string
    sql: ${TABLE}.p_keyword_keyword_engine_id ;;
  }

  dimension: keyword_id {
    type: string
    sql: ${TABLE}.keyword_id ;;
  }

  dimension: keyword_labels {
    type: string
    sql: ${TABLE}.keyword_labels ;;
  }

  dimension: keyword_landing_page {
    type: string
    sql: ${TABLE}.keyword_landing_page ;;
  }

  dimension: keyword_match_type {
    type: string
    sql: ${TABLE}.keyword_match_type ;;
  }

  dimension: keyword_max_bid {
    type: number
    sql: ${TABLE}.keyword_max_bid ;;
  }

  dimension: keyword_max_cpc {
    type: number
    sql: ${TABLE}.keyword_max_cpc ;;
  }

  dimension: keyword_min_bid {
    type: number
    sql: ${TABLE}.keyword_min_bid ;;
  }

  dimension: keyword_text {
    type: string
    sql: ${TABLE}.keyword_text ;;
  }

  dimension: keyword_url_params {
    type: string
    sql: ${TABLE}.keyword_url_params ;;
  }

  dimension: quality_score_current {
    type: number
    sql: ${TABLE}.quality_score_current ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  set: detail {
    fields: [
      account_id,
      ad_group_id,
      advertiser_id,
      agency_id,
      bid_strategy_inherited,
      campaign_id,
      creation_timestamp_date,
      effective_bid_strategy_id,
      effective_keyword_max_cpc,
      engine_status,
      p_keyword_is_display_keyword,
      keyword_clickserver_url,
      p_keyword_keyword_engine_id,
      keyword_id,
      keyword_labels,
      keyword_landing_page,
      keyword_match_type,
      keyword_max_bid,
      keyword_max_cpc,
      keyword_min_bid,
      keyword_text,
      keyword_url_params,
      quality_score_current,
      status
    ]
  }
}
