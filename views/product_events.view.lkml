view: product_events {
  sql_table_name: `SA360.ProductAdvertisedDeviceStats_21700000000010391`
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

  dimension: ad_words_conversion_value {
    type: number
    sql: ${TABLE}.adWordsConversionValue ;;
  }

  dimension: ad_words_conversions {
    type: number
    sql: ${TABLE}.adWordsConversions ;;
  }

  dimension: ad_words_view_through_conversions {
    type: number
    sql: ${TABLE}.adWordsViewThroughConversions ;;
  }

  dimension: advertiser_id {
    type: string
    sql: ${TABLE}.advertiserId ;;
  }

  dimension: agency_id {
    type: string
    sql: ${TABLE}.agencyId ;;
  }

  dimension: avg_cpc {
    type: number
    sql: ${TABLE}.avgCpc ;;
  }

  dimension: avg_cpm {
    type: number
    sql: ${TABLE}.avgCpm ;;
  }

  dimension: avg_pos {
    type: number
    sql: ${TABLE}.avgPos ;;
  }

  dimension: clicks {
    type: number
    sql: ${TABLE}.clicks ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }

  dimension: ctr {
    type: number
    sql: ${TABLE}.ctr ;;
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

  dimension: impr {
    type: number
    sql: ${TABLE}.impr ;;
  }

  dimension: product_id {
    type: string
    sql: ${TABLE}.productId ;;
  }

  dimension: visits {
    type: number
    sql: ${TABLE}.visits ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }

##### Product Metrics #####

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
    value_format_name: usd
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
