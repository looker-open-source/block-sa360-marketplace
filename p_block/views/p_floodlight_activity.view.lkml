view: p_floodlight_activity {
  sql_table_name: `@{SA_360_SCHEMA}.p_FloodlightActivity_@{ADVERTISER_ID}`
    ;;

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

  dimension: floodlight_activity {
    type: string
    sql: ${TABLE}.floodlightActivity ;;
  }

  dimension: floodlight_activity_id {
    type: string
    sql: ${TABLE}.floodlightActivityId ;;
  }

  dimension: floodlight_activity_tag {
    type: string
    sql: ${TABLE}.floodlightActivityTag ;;
  }

  dimension: floodlight_configuration_id {
    type: string
    sql: ${TABLE}.floodlightConfigurationId ;;
  }

  dimension: floodlight_group {
    type: string
    sql: ${TABLE}.floodlightGroup ;;
  }

  dimension: floodlight_group_conversion_type {
    type: string
    sql: ${TABLE}.floodlightGroupConversionType ;;
  }

  dimension: floodlight_group_id {
    type: string
    sql: ${TABLE}.floodlightGroupId ;;
  }

  dimension: floodlight_group_tag {
    type: string
    sql: ${TABLE}.floodlightGroupTag ;;
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
