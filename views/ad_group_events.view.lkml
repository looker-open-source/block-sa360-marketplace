view: ad_group_events {
  sql_table_name: `SA360.AdGroupDeviceStats_21700000000010391`
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
    datatype: datetime
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

  dimension: ad_words_conversion_value {
    hidden: yes
    type: number
    sql: ${TABLE}.adWordsConversionValue ;;
  }

  dimension: ad_words_conversions {
    hidden: yes
    type: number
    sql: ${TABLE}.adWordsConversions ;;
  }

  dimension: ad_words_view_through_conversions {
    hidden: yes
    type: number
    sql: ${TABLE}.adWordsViewThroughConversions ;;
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

  dimension: avg_cpc {
    hidden: yes
    type: number
    sql: ${TABLE}.avgCpc ;;
  }

  dimension: avg_cpm {
    hidden: yes
    type: number
    sql: ${TABLE}.avgCpm ;;
  }

  dimension: avg_pos {
    hidden: yes
    type: number
    sql: ${TABLE}.avgPos ;;
  }

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.campaignId ;;
  }

  dimension: clicks {
    hidden: yes
    type: number
    sql: ${TABLE}.clicks ;;
  }

  dimension: cost {
    hidden: yes
    type: number
    sql: ${TABLE}.cost ;;
  }

  dimension: ctr {
    hidden: yes
    type: number
    sql: ${TABLE}.ctr ;;
  }

  dimension_group: date {
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
    hidden: yes
    type: string
    sql: ${TABLE}.deviceSegment ;;
  }

  dimension: effective_bid_strategy_id {
    hidden: yes
    type: string
    sql: ${TABLE}.effectiveBidStrategyId ;;
  }

  dimension: impr {
    hidden: yes
    type: number
    sql: ${TABLE}.impr ;;
  }

  dimension: visits {
    hidden: yes
    type: number
    sql: ${TABLE}.visits ;;
  }

##### Ad Event Metrics #####

  measure: total_impressions {
    type: sum
    sql: ${impr} ;;
  }

  measure: total_clicks {
    type: sum
    sql: ${clicks} ;;
  }

  measure: total_visits {
    type: sum
    sql: ${visits} ;;
  }

  measure: total_cost {
    label: "Total Spend (Search Clicks)"
    type: sum
    value_format_name: usd_0
    sql: ${cost} ;;
  }

  measure: total_cumulative_spend {
    label: "Total Spend (Cumulative)"
    type: running_total
    sql: ${total_cost} ;;
    value_format_name: usd_0

  }

  measure: click_through_rate {
    label: "Click Through Rate (CTR)"
    description: "Percent of people that click on an ad."
    type: number
    value_format_name: percent_2
    sql: ${total_clicks}*1.0/NULLIF(${total_impressions},0);;
  }

  measure: cost_per_click {
    label: "Cost per Click (CPC)"
    description: "Average cost per ad click."
    type: number
    sql: ${total_cost}* 1.0/ NULLIF(${total_clicks},0) ;;
    value_format_name: usd
  }


}
