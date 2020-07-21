view: p_bid_strategy_21700000000010391 {
  sql_table_name: `SA360.p_BidStrategy_21700000000010391`
    ;;

  dimension: advertiser_id {
    type: string
    sql: ${TABLE}.advertiserId ;;
  }

  dimension: agency_id {
    type: string
    sql: ${TABLE}.agencyId ;;
  }

  dimension: bid_strategy {
    type: string
    sql: ${TABLE}.bidStrategy ;;
  }

  dimension: bid_strategy_goal {
    type: string
    sql: ${TABLE}.bidStrategyGoal ;;
  }

  dimension: bid_strategy_id {
    type: string
    sql: ${TABLE}.bidStrategyId ;;
  }

  dimension: bid_strategy_max_bid {
    type: number
    value_format_name: id
    sql: ${TABLE}.bidStrategyMaxBid ;;
  }

  dimension: bid_strategy_min_bid {
    type: number
    value_format_name: id
    sql: ${TABLE}.bidStrategyMinBid ;;
  }

  dimension: cpa_target {
    type: number
    sql: ${TABLE}.cpaTarget ;;
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

  dimension: ers_target {
    type: number
    sql: ${TABLE}.ersTarget ;;
  }

  dimension: floodlight_activity_target_ids {
    type: string
    sql: ${TABLE}.floodlightActivityTargetIds ;;
  }

  dimension: floodlight_optimization_enabled {
    type: yesno
    sql: ${TABLE}.floodlightOptimizationEnabled ;;
  }

  dimension: high_position {
    type: number
    sql: ${TABLE}.highPosition ;;
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

  dimension: low_position {
    type: number
    sql: ${TABLE}.lowPosition ;;
  }

  dimension: monthly_spend_target {
    type: number
    sql: ${TABLE}.monthlySpendTarget ;;
  }

  dimension: roas_target {
    type: number
    sql: ${TABLE}.roasTarget ;;
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
