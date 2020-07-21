view: ad_21700000000010391 {
  sql_table_name: `SA360.Ad_21700000000010391`
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

  dimension: ad {
    type: string
    sql: ${TABLE}.ad ;;
  }

  dimension: ad_description1 {
    type: string
    sql: ${TABLE}.adDescription1 ;;
  }

  dimension: ad_description2 {
    type: string
    sql: ${TABLE}.adDescription2 ;;
  }

  dimension: ad_display_url {
    type: string
    sql: ${TABLE}.adDisplayUrl ;;
  }

  dimension: ad_engine_id {
    type: string
    sql: ${TABLE}.adEngineId ;;
  }

  dimension: ad_group_id {
    type: string
    sql: ${TABLE}.adGroupId ;;
  }

  dimension: ad_headline {
    type: string
    sql: ${TABLE}.adHeadline ;;
  }

  dimension: ad_headline2 {
    type: string
    sql: ${TABLE}.adHeadline2 ;;
  }

  dimension: ad_id {
    type: string
    sql: ${TABLE}.adId ;;
  }

  dimension: ad_labels {
    type: string
    sql: ${TABLE}.adLabels ;;
  }

  dimension: ad_landing_page {
    type: string
    sql: ${TABLE}.adLandingPage ;;
  }

  dimension: ad_promotion_line {
    type: string
    sql: ${TABLE}.adPromotionLine ;;
  }

  dimension: ad_type {
    type: string
    sql: ${TABLE}.adType ;;
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

  dimension: effective_labels {
    type: string
    sql: ${TABLE}.effectiveLabels ;;
  }

  dimension: engine_status {
    type: string
    sql: ${TABLE}.engineStatus ;;
  }

  dimension: is_unattributed_ad {
    type: yesno
    sql: ${TABLE}.isUnattributedAd ;;
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

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
