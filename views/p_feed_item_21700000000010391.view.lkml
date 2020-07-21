view: p_feed_item_21700000000010391 {
  sql_table_name: `SA360.p_FeedItem_21700000000010391`
    ;;

  dimension: account_id {
    type: string
    sql: ${TABLE}.accountId ;;
  }

  dimension: advertiser_id {
    type: string
    sql: ${TABLE}.advertiserId ;;
  }

  dimension: agency_id {
    type: string
    sql: ${TABLE}.agencyId ;;
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

  dimension: feed_id {
    type: string
    sql: ${TABLE}.feedId ;;
  }

  dimension: feed_item_id {
    type: string
    sql: ${TABLE}.feedItemId ;;
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

  dimension: location_business_name {
    type: string
    sql: ${TABLE}.locationBusinessName ;;
  }

  dimension: location_category {
    type: string
    sql: ${TABLE}.locationCategory ;;
  }

  dimension: location_details {
    type: string
    sql: ${TABLE}.locationDetails ;;
  }

  dimension: sitelink_clickserver_url {
    type: string
    sql: ${TABLE}.sitelinkClickserverUrl ;;
  }

  dimension: sitelink_description1 {
    type: string
    sql: ${TABLE}.sitelinkDescription1 ;;
  }

  dimension: sitelink_description2 {
    type: string
    sql: ${TABLE}.sitelinkDescription2 ;;
  }

  dimension: sitelink_display_text {
    type: string
    sql: ${TABLE}.sitelinkDisplayText ;;
  }

  dimension: sitelink_landing_page_url {
    type: string
    sql: ${TABLE}.sitelinkLandingPageUrl ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  measure: count {
    type: count
    drill_fields: [location_business_name]
  }
}
