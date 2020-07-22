view: campaign_feed_item_stats {
  sql_table_name: `SA360.CampaignFeedItemStats_21700000000010391`
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

  dimension: account_id {
    type: string
    sql: ${TABLE}.accountId ;;
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

  dimension: campaign_engine_id {
    type: string
    sql: ${TABLE}.campaignEngineId ;;
  }

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.campaignId ;;
  }

  dimension: clicks {
    type: number
    sql: ${TABLE}.clicks ;;
  }

  dimension: clicks_with_feed_item_showing {
    type: number
    sql: ${TABLE}.clicksWithFeedItemShowing ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }

  dimension: cost_with_feed_item_showing {
    type: number
    sql: ${TABLE}.costWithFeedItemShowing ;;
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

  dimension: effective_bid_strategy_id {
    type: string
    sql: ${TABLE}.effectiveBidStrategyId ;;
  }

  dimension: feed_id {
    type: string
    sql: ${TABLE}.feedId ;;
  }

  dimension: feed_item_id {
    type: string
    sql: ${TABLE}.feedItemId ;;
  }

  dimension: feed_type {
    type: string
    sql: ${TABLE}.feedType ;;
  }

  dimension: impr {
    type: number
    sql: ${TABLE}.impr ;;
  }

  dimension: visits {
    type: number
    sql: ${TABLE}.visits ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
