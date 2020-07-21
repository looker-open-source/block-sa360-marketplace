view: account_stats_21700000000010391 {
  sql_table_name: `SA360.AccountStats_21700000000010391`
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

  dimension: account_engine_id {
    type: string
    sql: ${TABLE}.accountEngineId ;;
  }

  dimension: account_id {
    type: string
    sql: ${TABLE}.accountId ;;
  }

  dimension: advertiser_id {
    type: string
    sql: ${TABLE}.advertiserId ;;
  }

  dimension: agency_id {
    type: string
    sql: ${TABLE}.agencyId ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}.date ;;
  }

  dimension: display_budget_lost_impression_share {
    type: string
    sql: ${TABLE}.displayBudgetLostImpressionShare ;;
  }

  dimension: display_impression_share {
    type: string
    sql: ${TABLE}.displayImpressionShare ;;
  }

  dimension: display_rank_lost_impression_share {
    type: string
    sql: ${TABLE}.displayRankLostImpressionShare ;;
  }

  dimension: quality_score_avg {
    type: number
    sql: ${TABLE}.qualityScoreAvg ;;
  }

  dimension: search_budget_lost_impression_share {
    type: string
    sql: ${TABLE}.searchBudgetLostImpressionShare ;;
  }

  dimension: search_impression_share {
    type: string
    sql: ${TABLE}.searchImpressionShare ;;
  }

  dimension: search_rank_lost_impression_share {
    type: string
    sql: ${TABLE}.searchRankLostImpressionShare ;;
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
