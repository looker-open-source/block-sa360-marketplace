view: p_product_lead_and_cross_sell_floodlight_stats_21700000000010391 {
  sql_table_name: `SA360.p_ProductLeadAndCrossSellFloodlightStats_21700000000010391`
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

  dimension: cross_sell_average_unit_price {
    type: number
    sql: ${TABLE}.crossSellAverageUnitPrice ;;
  }

  dimension: cross_sell_cost_of_goods_sold {
    type: number
    sql: ${TABLE}.crossSellCostOfGoodsSold ;;
  }

  dimension: cross_sell_gross_from_units_sold {
    type: number
    sql: ${TABLE}.crossSellGrossFromUnitsSold ;;
  }

  dimension: cross_sell_gross_profit_margin {
    type: number
    sql: ${TABLE}.crossSellGrossProfitMargin ;;
  }

  dimension: cross_sell_revenue_from_units_sold {
    type: number
    sql: ${TABLE}.crossSellRevenueFromUnitsSold ;;
  }

  dimension: cross_sell_units_sold {
    type: number
    sql: ${TABLE}.crossSellUnitsSold ;;
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

  dimension: device_segment {
    type: string
    sql: ${TABLE}.deviceSegment ;;
  }

  dimension: dfa_actions {
    type: number
    sql: ${TABLE}.dfaActions ;;
  }

  dimension: dfa_revenue {
    type: number
    sql: ${TABLE}.dfaRevenue ;;
  }

  dimension: dfa_transactions {
    type: number
    sql: ${TABLE}.dfaTransactions ;;
  }

  dimension: dfa_weighted_actions {
    type: number
    sql: ${TABLE}.dfaWeightedActions ;;
  }

  dimension: floodlight_activity_id {
    type: string
    sql: ${TABLE}.floodlightActivityId ;;
  }

  dimension: floodlight_group_id {
    type: string
    sql: ${TABLE}.floodlightGroupId ;;
  }

  dimension: lead_average_unit_price {
    type: number
    sql: ${TABLE}.leadAverageUnitPrice ;;
  }

  dimension: lead_cost_of_goods_sold {
    type: number
    sql: ${TABLE}.leadCostOfGoodsSold ;;
  }

  dimension: lead_gross_profit_from_units_sold {
    type: number
    sql: ${TABLE}.leadGrossProfitFromUnitsSold ;;
  }

  dimension: lead_gross_profit_margin {
    type: number
    sql: ${TABLE}.leadGrossProfitMargin ;;
  }

  dimension: lead_revenue_from_units_sold {
    type: number
    sql: ${TABLE}.leadRevenueFromUnitsSold ;;
  }

  dimension: lead_units_sold {
    type: number
    sql: ${TABLE}.leadUnitsSold ;;
  }

  dimension: product_average_unit_price {
    type: number
    sql: ${TABLE}.productAverageUnitPrice ;;
  }

  dimension: product_id {
    type: string
    sql: ${TABLE}.productId ;;
  }

  dimension: product_id_sold {
    type: string
    sql: ${TABLE}.productIdSold ;;
  }

  dimension: product_revenue_from_units_sold {
    type: number
    sql: ${TABLE}.productRevenueFromUnitsSold ;;
  }

  dimension: product_units_sold {
    type: number
    sql: ${TABLE}.productUnitsSold ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
