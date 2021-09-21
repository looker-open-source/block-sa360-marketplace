view: p_ad_group_conversion_events {
  view_label: "Ad Group Events"
  sql_table_name: `@{SA_360_SCHEMA}.p_AdGroupFloodlightAndDeviceStats_@{ADVERTISER_ID}`
    ;;

  dimension: account_id {
    hidden: yes
    type: string
    sql: ${TABLE}.accountId ;;
  }

  dimension: ad_group_engine_id {
    hidden: yes
    type: string
    sql: ${TABLE}.adGroupEngineId ;;
  }

  dimension: ad_group_id {
    hidden: yes
    type: string
    sql: ${TABLE}.adGroupId ;;
  }

  dimension: advertiser_id {
    hidden: yes
    type: string
    sql: ${TABLE}.advertiserId ;;
  }

  dimension: agency_id {
    hidden: yes
    type: string
    sql: ${TABLE}.agencyId ;;
  }

  dimension: campaign_id {
    hidden: yes
    type: string
    sql: ${TABLE}.campaignId ;;
  }

  dimension_group: date {
#     hidden: yes
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
    hidden: yes
    type: number
    sql: ${TABLE}.dfaActions ;;
  }

  dimension: dfa_revenue {
    hidden: yes
    type: number
    sql: ${TABLE}.dfaRevenue ;;
  }

  dimension: dfa_transactions {
    hidden: yes
    type: number
    sql: ${TABLE}.dfaTransactions ;;
  }

  dimension: dfa_weighted_actions {
    hidden: yes
    type: number
    sql: ${TABLE}.dfaWeightedActions ;;
  }

  dimension: effective_bid_strategy_id {
    hidden: yes
    type: string
    sql: ${TABLE}.effectiveBidStrategyId ;;
  }

  dimension: floodlight_activity_id {
    hidden: yes
    type: string
    sql: ${TABLE}.floodlightActivityId ;;
  }

  dimension: floodlight_group_id {
    hidden: yes
    type: string
    sql: ${TABLE}.floodlightGroupId ;;
  }

  ##### Ad Group Standard Metric Aggregates #####

  measure: total_actions {
    type: sum
    sql: ${dfa_actions} ;;
  }

  measure: total_transactions {
    type: sum
    sql: ${dfa_transactions} ;;
  }

  measure: total_conversions {
    description: "Sum of Dfa Actions and Dfa Transactions"
    type: number
    sql: ${total_actions} + ${total_transactions} ;;
    drill_fields: [p_ad_group_rollup.ad_group, total_conversions, cost_per_acquisition, total_actions, total_transactions]
  }

  ##### Ad Group Conversion Metrics #####

  measure: total_revenue {
    type: sum
    value_format_name: usd_0
    sql: ${dfa_revenue} ;;
    drill_fields: [p_ad_group_rollup.ad_group, total_revenue, p_ad_group_events.total_cost]
  }

  measure: roas {
    description: "Associated revenue divided by the total cost"
    type: number
    value_format_name: percent_0
    sql: 1.0 * ${total_revenue} / NULLIF(${p_ad_group_events.total_cost},0)  ;;
    drill_fields: [p_ad_group_rollup.ad_group, roas, total_revenue, p_ad_group_events.total_cost]
  }

  measure: cost_per_acquisition {
    label: "Cost per Acquisition (CPA)"
    description: "Average cost per conversion"
    type: number
    value_format_name: usd
    sql: ${p_ad_group_events.total_cost}*1.0/NULLIF(${total_conversions},0) ;;
    drill_fields: [p_ad_group_rollup.ad_group, cost_per_acquisition, p_ad_group_events.total_cost, total_conversions]
  }

  measure: conversion_rate {
    description: "Conversions divided by Clicks"
    type: number
    value_format_name: percent_2
    sql: 1.0 * ${total_actions} / NULLIF(${p_ad_group_events.total_clicks},0)  ;;
    drill_fields: [p_ad_group_rollup.ad_group, conversion_rate, total_actions, p_ad_group_events.total_clicks]
  }

###################### Period over Period Reporting Metrics ######################

  filter: this_period_filter {
    view_label: "Period over Period"
    group_label: "Arbitrary Period Comparisons"
    type: date
  }

  filter: prior_period_filter {
    view_label: "Period over Period"
    group_label: "Arbitrary Period Comparisons"
    type: date
  }

  dimension: days_from_start_first {
    view_label: "Period over Period"
    hidden: yes
    type: number
    sql: DATE_DIFF( ${date_date}, CAST({% date_start this_period_filter %} AS DATE), DAY) ;;
  }

  dimension: days_from_start_second {
    view_label: "Period over Period"
    hidden: yes
    type: number
    sql: DATE_DIFF(${date_date}, CAST({% date_start prior_period_filter %} AS DATE), DAY) ;;
  }

  dimension: days_from_period_start {
    view_label: "Period over Period"
    type: number
    sql:
      CASE
       WHEN ${days_from_start_first} >= 0
       THEN ${days_from_start_first}
       WHEN ${days_from_start_second} >= 0
       THEN ${days_from_start_second}
      END;;
  }

  dimension: period_selected {
    view_label: "Period over Period"
    type: string
    sql:
        CASE
          WHEN ${date_date} >=  DATE({% date_start this_period_filter %})
          AND ${date_date} <= DATE({% date_end this_period_filter %})
          THEN 'This Period'
          WHEN ${date_date} >=  DATE({% date_start prior_period_filter %})
          AND ${date_date} <= DATE({% date_end prior_period_filter %})
          THEN 'Prior Period'
          END ;;
  }
###################### Close - Period over Period Reporting Metrics ######################
}
