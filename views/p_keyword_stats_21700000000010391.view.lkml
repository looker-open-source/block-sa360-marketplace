view: p_keyword_stats_21700000000010391 {
  sql_table_name: `SA360.p_KeywordStats_21700000000010391`
    ;;

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

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.campaignId ;;
  }

  dimension: effective_bid_strategy_id {
    type: string
    sql: ${TABLE}.effectiveBidStrategyId ;;
  }

  dimension: keyword_engine_id {
    type: string
    sql: ${TABLE}.keywordEngineId ;;
  }

  dimension: keyword_id {
    type: string
    sql: ${TABLE}.keywordId ;;
  }

  dimension: quality_score_avg {
    type: number
    sql: ${TABLE}.qualityScoreAvg ;;
  }

  dimension: top_of_page_bid_avg {
    type: number
    sql: ${TABLE}.topOfPageBidAvg ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
