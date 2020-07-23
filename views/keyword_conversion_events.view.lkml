view: keyword_conversion_events {
  sql_table_name: `SA360.KeywordFloodlightAndDeviceStats_21700000000010391`
    ;;

  dimension_group: _data {
    hidden: yes
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year,
      day_of_month,
      day_of_week
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

  dimension: ad_id {
    hidden: yes
    type: string
    sql: ${TABLE}.adId ;;
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

  dimension_group: visit {
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

  dimension: keyword_engine_id {
    hidden: yes
    type: string
    sql: ${TABLE}.keywordEngineId ;;
  }

  dimension: keyword_id {
    hidden: yes
    type: string
    sql: ${TABLE}.keywordId ;;
  }
###################### Period over Period Reporting Metrics ######################
  filter: period_1 {
    view_label: "Period over Period"
    description: "When performing period over period analysis, use this filter to assign a date range to the 1st timeframe."
    type: date
  }

  dimension: is_period_1 {
    view_label: "Period over Period"
#     hidden: yes
# The commented out condition statement below should have worked, but throws a type error. This would be better since it could be applied to the SQL_WHERE parameter for performant queries.
#     sql: {% condition timeframe_a %} ${_data_date} {% endcondition %} ;;
    sql:  CASE
            WHEN ${_data_raw}  BETWEEN  DATE({% date_start period_1 %}) AND DATE({% date_end period_1 %}) THEN "yes"
            ELSE "no"
          END ;;
  }

  filter: period_2 {
    view_label: "Period over Period"
    description: "When performing period over period analysis, use this filter to assign a date range to the 2nd timeframe."
    type: date
  }

  dimension: is_period_2 {
    view_label: "Period over Period"
#     hidden: yes
    sql:   CASE
            WHEN ${_data_raw}  BETWEEN  DATE({% date_start period_2 %}) AND DATE({% date_end period_2 %}) THEN "yes"
            ELSE "no"
          END ;;
  }

  measure: total_actions_p1 {
    view_label: "Period over Period"
#     group_label: "Period 1 Metrics"
    type: sum
    sql: ${dfa_actions} ;;
    filters: [is_period_1: "yes"]
  }

  measure: total_actions_p2 {
    view_label: "Period over Period"
#     group_label: "Period 2 Metrics"
    type: sum
    sql: ${dfa_actions} ;;
    filters: [is_period_2: "yes"]
  }

  parameter: select_timeframe {
    view_label: "Period over Period"
    allowed_value: {value: "Day of Month"}
    allowed_value: {value: "Day of Week"}
  }
  dimension: dynamic_timeframe {
    view_label: "Period over Period"
    label_from_parameter: select_timeframe
    sql: {% if select_timeframe._parameter_value == "'Day of Month'" %} ${_data_day_of_month}
         {% elsif select_timeframe._parameter_value == "'Day of Week'" %} ${_data_day_of_week}
         {% endif %} ;;
  }

###################### Close - Period over Period Reporting Metrics ######################




###################### Dynamic Measure ######################
#   parameter: select_measure {
#     hidden: yes
#     type: string
#     allowed_value: {label: "Auctions" value: "Auctions"}
#     allowed_value: {label: "Auctions Cleared" value: "Auctions Cleared"}
#     allowed_value: {label: "Auctions per Unique" value: "Auctions per Unique"}
#     allowed_value: {label: "Auctions w/ Bids" value: "Auctions w/ Bids"}
#   }
#   measure: dynamic_measure {
#     hidden: yes
#     label_from_parameter: select_measure
#     type: number
#     sql:
#       {% if select_measure._parameter_value == "'Auctions'" %}
#         ${auctions}
#       {% elsif select_measure._parameter_value == "'Auctions Cleared'" %}
#         ${cleared}
#       {% elsif select_measure._parameter_value == "'Auctions per Unique'" %}
#         ${auctions_per_unique}
#       {% else %}
#         ${auctions_with_bids}
#       {% endif %};;
#     link: {
#       label: "Click to Drill"
#       url: "{% if select_measure._parameter_value == 'Auctions' %} {{ auctions._link }}
#       {% elsif select_measure._parameter_value == 'Auctions Cleared' %} {{ cleared._link }}
#       {% elsif select_measure._parameter_value == 'Auctions per Unique' %} {{ auctions_per_unique._link }}
#       {% else %} {{ auctions_with_bids._link }}
#       {% endif %}"
#     }
#   }


###################### Close - Dynamic Measure ######################



  ##### Keyword Standard Metric Aggregates #####

  measure: total_actions {
    description: "The total number of Campaign manager actions."
    type: sum
    sql: ${dfa_actions} ;;
  }

  measure: total_transactions {
    description: "The total number of Campaign manager transactions."
    type: sum
    sql: ${dfa_transactions} ;;
  }

  measure: total_conversions {
    description: "Sum of Dfa Actions and Dfa Transactions"
    type: number
    sql: ${total_actions} + ${total_transactions} ;;
  }

   ##### Keyword Conversion Metrics #####

  measure: total_revenue {
    description: "Aggregate revenue generated by Campaign manager transactions."
    type: sum
    value_format_name: usd
    sql: ${dfa_revenue} ;;
  }

  measure: ROAS {
    label: "Percent ROAS"
    description: "Associated revenue divided by the total cost"
    type: number
    value_format_name: percent_2
    sql: 1.0 * ${total_revenue} / NULLIF(${keyword_events.total_cost},0)  ;;
  }

  measure: cost_per_acquisition {
    label: "Cost per Acquisition (CPA)"
    description: "Average cost per conversion"
    type: number
    value_format_name: usd
    sql: ${keyword_events.total_cost}*1.0/NULLIF(${total_conversions},0) ;;
  }

  measure: conversion_rate {
    description: "Conversions divided by Clicks"
    type: number
    value_format_name: percent_2
    sql: 1.0 * ${total_actions} / NULLIF(${keyword_events.total_clicks},0)  ;;
  }


  }
