view: p_negative_ad_group_keyword_21700000000010391 {
  sql_table_name: `SA360.p_NegativeAdGroupKeyword_21700000000010391`
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

  dimension: engine_status {
    type: string
    sql: ${TABLE}.engineStatus ;;
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

  dimension: negative_ad_group_keyword_id {
    type: string
    sql: ${TABLE}.negativeAdGroupKeywordId ;;
  }

  dimension: negative_ad_group_keyword_match_type {
    type: string
    sql: ${TABLE}.negativeAdGroupKeywordMatchType ;;
  }

  dimension: negative_ad_group_keyword_text {
    type: string
    sql: ${TABLE}.negativeAdGroupKeywordText ;;
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
