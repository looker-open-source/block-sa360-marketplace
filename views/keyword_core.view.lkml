include: "//@{CONFIG_PROJECT_NAME}/keyword.view.lkml"


view: keyword {
  extends: [keyword_config]
}

###################################################

view: keyword_core {
  sql_table_name: `@{SA_360_SCHEMA}.Keyword_@{ADVERTISER_ID}`
    ;;

  dimension: keyword_composite_key {
    primary_key: yes
    sql: ${keyword_id} || ' ' || ${_data_date} ;;
  }

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
    hidden: yes
    type: string
    sql: ${TABLE}.bingKeywordParam2 ;;
  }

  dimension: bing_keyword_param3 {
    hidden: yes
    type: string
    sql: ${TABLE}.bingKeywordParam3 ;;
  }

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.campaignId ;;
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

  dimension: effective_bid_strategy_id {
    type: string
    sql: ${TABLE}.effectiveBidStrategyId ;;
  }

  dimension: effective_keyword_max_cpc {
    description: "Overrides the ad group's max CPC and sets a maximum amount you are willing to pay if someone clicks an ad for this specific keyword. If this field is empty, the keyword will use the ad group's max CPC."
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
    description: "Indicates whether this is a placeholder keyword that is used for display and placement reporting."
    type: yesno
    sql: ${TABLE}.isDisplayKeyword ;;
  }

  dimension: keyword_clickserver_url {
    hidden: yes
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
    html: <a href="{{ value }}"><button>Landing Page</button></a>
    ;;
  }

  dimension: keyword_match_type {
    type: string
    sql: ${TABLE}.keywordMatchType ;;
  }

  dimension: keyword_max_bid {
    description: "If this keyword is managed by a DS bid strategy, the bid strategy will never raise bids above this limit."
    type: number
    value_format_name: id
    sql: ${TABLE}.keywordMaxBid ;;
  }

  dimension: keyword_max_cpc {
    description: "Overrides the ad group's max CPC and sets a maximum amount you are willing to pay if someone clicks an ad for this specific keyword. If this field is empty, the keyword will use the ad group's max CPC."
    type: number
    sql: ${TABLE}.keywordMaxCpc ;;
  }

  dimension: keyword_min_bid {
    description: "If this keyword is managed by a DS bid strategy, the bid strategy will never lower bids below this limit."
    type: number
    value_format_name: id
    sql: ${TABLE}.keywordMinBid ;;
  }

  dimension: keyword_text {
    type: string
    sql: ${TABLE}.keywordText ;;
    link: {
      url: "/dashboards/block_sa360::keyword_performance?Keyword={{ value | encode_uri }}"
      label: "Keyword Performance Lookup"
    }
  }

  dimension: keyword_url_params {
    hidden:  yes
    type: string
    sql: ${TABLE}.keywordUrlParams ;;
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

  dimension: quality_score_current {
    description: "Google Ads and Bing Ads only. The most recent value of the engine's Quality score (QS) for a keyword."
    type: number
    sql: ${TABLE}.qualityScoreCurrent ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: top_of_page_bid_current {
    description: "Google Ads only. Approximates the current CPC bid needed for your ad to appear regularly in the top positions above the search results."
    type: number
    sql: ${TABLE}.topOfPageBidCurrent ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
