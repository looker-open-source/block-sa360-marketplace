view: keyword {
  sql_table_name: `SA360.Keyword_21700000000010391`
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

  dimension: bing_keyword_param2 {
    type: string
    sql: ${TABLE}.bingKeywordParam2 ;;
  }

  dimension: bing_keyword_param3 {
    type: string
    sql: ${TABLE}.bingKeywordParam3 ;;
  }

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.campaignId ;;
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

  dimension: effective_bid_strategy_id {
    type: string
    sql: ${TABLE}.effectiveBidStrategyId ;;
  }

  dimension: effective_keyword_max_cpc {
    type: number
    sql: ${TABLE}.effectiveKeywordMaxCpc ;;
  }

  dimension: effective_labels {
    type: string
    sql: ${TABLE}.effectiveLabels ;;
  }

  dimension: engine_status {
    type: string
    sql: ${TABLE}.engineStatus ;;
  }

  dimension: is_display_keyword {
    type: yesno
    sql: ${TABLE}.isDisplayKeyword ;;
  }

  dimension: keyword_clickserver_url {
    type: string
    sql: ${TABLE}.keywordClickserverUrl ;;
  }

  dimension: keyword_engine_id {
    type: string
    sql: ${TABLE}.keywordEngineId ;;
  }

  dimension: keyword_id {
    type: string
    sql: ${TABLE}.keywordId ;;
  }

  dimension: keyword_labels {
    type: string
    sql: ${TABLE}.keywordLabels ;;
  }

  dimension: keyword_landing_page {
    type: string
    sql: ${TABLE}.keywordLandingPage ;;
  }

  dimension: keyword_match_type {
    type: string
    sql: ${TABLE}.keywordMatchType ;;
  }

  dimension: keyword_max_bid {
    type: number
    value_format_name: id
    sql: ${TABLE}.keywordMaxBid ;;
  }

  dimension: keyword_max_cpc {
    type: number
    sql: ${TABLE}.keywordMaxCpc ;;
  }

  dimension: keyword_min_bid {
    type: number
    value_format_name: id
    sql: ${TABLE}.keywordMinBid ;;
  }

  dimension: keyword_text {
    type: string
    sql: ${TABLE}.keywordText ;;
  }

  dimension: keyword_url_params {
    type: string
    sql: ${TABLE}.keywordUrlParams ;;
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

  dimension: quality_score_current {
    type: number
    sql: ${TABLE}.qualityScoreCurrent ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: top_of_page_bid_current {
    type: number
    sql: ${TABLE}.topOfPageBidCurrent ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
