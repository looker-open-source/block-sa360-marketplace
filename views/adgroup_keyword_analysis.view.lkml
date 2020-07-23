view: adgroup_keyword_analysis {
  derived_table: {
    sql: SELECT
          adGroupId,
          SUM(dfaTransactions) as sum_transactions,
          SUM(dfaRevenue) as sum_revenue,
          SUM(dfaActions) as sum_actions,
          COUNT(DISTINCT keywordId) as count_keywords
      FROM `solution-guide-repository.SA360.KeywordFloodlightAndDeviceStats_21700000000010391`
      GROUP BY adGroupId
 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: ad_group_id {
    type: string
    sql: ${TABLE}.adGroupId ;;
  }

  dimension: sum_transactions {
    type: number
    sql: ${TABLE}.sum_transactions ;;
  }

  dimension: sum_revenue {
    type: number
    sql: ${TABLE}.sum_revenue ;;
  }

  dimension: sum_actions {
    type: number
    sql: ${TABLE}.sum_actions ;;
  }

  dimension: count_keywords {
    type: string
    sql: ${TABLE}.count_keywords ;;
  }

  measure: adgroup_revenue {
    type: sum_distinct
    sql: ${sum_revenue} ;;
    sql_distinct_key: ${ad_group_id} ;;
  }

  measure: adgroup_transactions {
    type: sum_distinct
    sql: ${sum_transactions} ;;
    sql_distinct_key: ${ad_group_id} ;;
  }

  measure: adgroup_actions {
    type: sum_distinct
    sql: ${sum_actions} ;;
    sql_distinct_key: ${ad_group_id} ;;
  }

  measure: adgroup_keyword_count {
    type: sum_distinct
    sql: ${count_keywords} ;;
    sql_distinct_key: ${ad_group_id} ;;
  }

  measure: average_keyword_revenue {
    type: average
    sql: ${adgroup_revenue}/${adgroup_keyword_count}  ;;
  }

  set: detail {
    fields: [ad_group_id, sum_transactions, sum_revenue, sum_actions]
  }
}
