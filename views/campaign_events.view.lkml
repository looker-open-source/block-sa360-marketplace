view: campaign_events {
  sql_table_name: `SA360.CampaignDeviceStats_21700000000010391`
    ;;

  dimension: campaign_composite_key {
    hidden: yes
    sql: ${campaign_id} || ' ' || ${_data_date} ;;
  }

  dimension: advertiser_composite_key {
    hidden: yes
    sql: ${advertiser_id} || ' ' || ${_data_date} ;;
  }

  dimension: account_composite_key {
    hidden: yes
    sql: ${account_id} || ' ' || ${_data_date} ;;
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
    hidden: yes
    type: string
    sql: ${TABLE}.accountId ;;
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

  dimension: campaign_engine_id {
    hidden: yes
    type: string
    sql: ${TABLE}.campaignEngineId ;;
  }

  dimension: campaign_id {
    hidden: yes
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

##### Campaign Metrics #####

  measure: total_impressions {
    type: sum
    sql: ${impr} ;;
    drill_fields: [campaign.campaign, total_impressions, total_clicks]
  }

  measure: total_clicks {
    type: sum
    sql: ${clicks} ;;
    drill_fields: [campaign.campaign, total_clicks, campaign_conversion_events.total_conversions]
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
    drill_fields: [campaign.campaign,  total_cost, total_clicks, campaign_conversion_events.total_revenue]
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
    drill_fields: [campaign.campaign, click_through_rate, total_clicks, total_impressions]
  }

  measure: cost_per_click {
    label: "Cost per Click (CPC)"
    description: "Average cost per ad click."
    type: number
    sql: ${total_cost}* 1.0/ NULLIF(${total_clicks},0) ;;
    value_format_name: usd
    drill_fields: [campaign.campaign, cost_per_click, total_cost, total_clicks]
  }


}
