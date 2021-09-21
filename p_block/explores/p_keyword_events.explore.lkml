include: "/p_block/views/*.view"

explore: p_keyword_events {
  label: "(4) Keyword Events"
  description: "Performance metrics for Keywords including Floodlight attributes."
  join: p_keyword_conversion_events {
    view_label: "Keyword Events"
    relationship: one_to_one
    type: full_outer
    sql_on: ${p_keyword_events.keyword_id} = ${p_keyword_conversion_events.keyword_id}
            AND ${p_keyword_events.date_date} = ${p_keyword_conversion_events.date_date}
            AND ${p_keyword_events.device_segment} = ${p_keyword_conversion_events.device_segment}
            AND ${p_keyword_events.ad_id} = ${p_keyword_conversion_events.ad_id}
            AND ${p_keyword_events.ad_group_id} = ${p_keyword_conversion_events.ad_group_id};;
  }
  # Join Dimensional Tables
  join: p_account_rollup {
    view_label: "Keyword Events"
    relationship: one_to_one
    type: left_outer
    sql_on: ${p_account_rollup.account_id} = ${p_keyword_events.account_id} ;;
  }
  join: p_keyword_rollup {
    relationship: one_to_one
    type: left_outer
    sql_on: ${p_keyword_events.keyword_id} = ${p_keyword_rollup.keyword_id} ;;
  }
  join: p_ad_group_rollup {
    relationship: one_to_one
    type: left_outer
    sql_on: ${p_keyword_events.ad_group_id} = ${p_ad_group_rollup.ad_group_id} ;;
  }
  join: p_campaign_rollup {
    relationship: one_to_one
    type: left_outer
    sql_on: ${p_keyword_events.campaign_id} = ${p_campaign_rollup.id} ;;
  }
  join: p_advertiser_rollup {
    relationship: one_to_one
    type: left_outer
    sql_on: ${p_keyword_events.advertiser_id} = ${p_advertiser_rollup.advertiser_id}} ;;
  }
  join: p_floodlight_activity {
    relationship: many_to_one
    type: left_outer
    sql_on: ${p_keyword_conversion_events.floodlight_activity_id} = ${p_floodlight_activity.floodlight_activity_id} ;;
  }
}
