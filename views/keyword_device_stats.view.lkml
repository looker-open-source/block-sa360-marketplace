view: keyword_device_stats {
  sql_table_name: `SA360.KeywordDeviceStats_21700000000010391`
    ;;

  dimension_group: _data {
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
    sql: ${TABLE}._DATA_DATE ;;
  }

  dimension_group: _latest {
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
    sql: ${TABLE}._LATEST_DATE ;;
  }

  dimension: account_id {
    type: string
    sql: ${TABLE}.accountId ;;
  }

  dimension: ad_group_id {
    type: string
    sql: ${TABLE}.adGroupId ;;
  }

  dimension: ad_id {
    type: string
    sql: ${TABLE}.adId ;;
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

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.campaignId ;;
  }

  dimension: clicks {
    hidden:  yes
    type: number
    sql: ${TABLE}.clicks ;;
  }

  dimension: cost {
    hidden:  yes
    type: number
    sql: ${TABLE}.cost ;;
  }

  dimension: ctr {
    type: number
    sql: ${TABLE}.ctr ;;
  }

  dimension_group: visit {
    description: "I believe this is the visit date????"
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

  dimension: effective_bid_strategy_id {
    type: string
    sql: ${TABLE}.effectiveBidStrategyId ;;
  }

  dimension: impr {
    hidden:  yes
    type: number
    sql: ${TABLE}.impr ;;
  }

  dimension: keyword_engine_id {
    type: string
    sql: ${TABLE}.keywordEngineId ;;
  }

  dimension: keyword_id {
    type: string
    sql: ${TABLE}.keywordId ;;
  }

  dimension: visits {
    hidden:  yes
    type: number
    sql: ${TABLE}.visits ;;
  }

  ### MEASURES

  measure: count {
    type: count
    drill_fields: []
  }

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
    type: sum
    value_format_name: usd
    sql: ${cost} ;;
  }

  measure: click_through_rate {
    type: number
    value_format_name: percent_4
    sql: (${total_clicks}/${total_impressions})/100;;
  }
}
