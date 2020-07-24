view: product_conversion_events {
  sql_table_name: `SA360.ProductAdvertisedFloodlightAndDeviceStats_21700000000010391`
    ;;

  dimension_group: _data {
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
    hidden: yes
    type: string
    sql: ${TABLE}.accountId ;;
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
    hidden:  yes
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

  dimension: product_id {
    hidden: yes
    type: string
    sql: ${TABLE}.productId ;;
  }

  ##### Product Standard Metric Aggregates #####

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
    drill_fields: [campaign.campaign, total_conversions, total_actions, total_transactions]
  }

  ##### Product Conversion Metrics #####

  measure: total_revenue {
    type: sum
    value_format_name: usd_0
    sql: ${dfa_revenue} ;;
    drill_fields: [campaign.campaign, total_revenue, product_events.total_cost, cost_per_acquisition]
  }

  measure: ROAS {
    label: "ROAS as a Percentage"
    description: "Associated revenue divided by the total cost"
    type: number
    value_format_name: percent_0
    sql: 1.0 * ${total_revenue} / NULLIF(${product_events.total_cost},0) ;;
    drill_fields: [campaign.campaign, ROAS, total_revenue, product_events.total_cost]
  }

  measure: cost_per_acquisition {
    label: "Cost per Acquisition (CPA)"
    description: "Average cost per conversion"
    type: number
    value_format_name: usd
    sql: ${product_events.total_cost}*1.0/NULLIF(${total_conversions},0) ;;
    drill_fields: [campaign.campaign, cost_per_acquisition, product_events.total_cost, total_conversions]
  }

  measure: conversion_rate {
    description: "Conversions divided by Clicks"
    type: number
    value_format_name: percent_2
    sql: 1.0 * ${total_actions} / NULLIF(${product_events.total_clicks},0)  ;;
    drill_fields: [campaign.campaign, conversion_rate, total_actions, product_events.total_clicks]
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
    sql: DATE_DIFF( ${_data_raw}, CAST({% date_start this_period_filter %} AS DATE), DAY) ;;
  }

  dimension: days_from_start_second {
    view_label: "Period over Period"
    hidden: yes
    type: number
    sql: DATE_DIFF(${_data_raw}, CAST({% date_start prior_period_filter %} AS DATE), DAY) ;;
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
          WHEN ${_data_raw} >=  DATE({% date_start this_period_filter %})
          AND ${_data_raw} <= DATE({% date_end this_period_filter %})
          THEN 'This Period'
          WHEN ${_data_raw} >=  DATE({% date_start prior_period_filter %})
          AND ${_data_raw} <= DATE({% date_end prior_period_filter %})
          THEN 'Prior Period'
          END ;;
  }
###################### Close - Period over Period Reporting Metrics ######################


}
