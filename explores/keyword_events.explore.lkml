include: "/views/*.view"

explore: keyword_events {
  label: "(4) Keyword Events"
  description: "Performance metrics for Keywords including Floodlight attributes."
  join: keyword_conversion_events {
    view_label: "Keyword Events"
    relationship: one_to_one
    type: full_outer
    sql_on: ${keyword_events.keyword_id} = ${keyword_conversion_events.keyword_id}
            AND ${keyword_events._data_date} = ${keyword_conversion_events._data_date}
            AND ${keyword_events.device_segment} = ${keyword_conversion_events.device_segment}
            AND ${keyword_events.ad_id} = ${keyword_conversion_events.ad_id}
            AND ${keyword_events.ad_group_id} = ${keyword_conversion_events.ad_group_id};;
  }
  # Join Dimensional Tables
  join: account {
    view_label: "Keyword Events"
    relationship: one_to_one
    type: left_outer
    sql_on: ${account.account_composite_key} = ${keyword_events.account_composite_key} ;;
  }
  join: keyword {
    relationship: one_to_one
    type: left_outer
    sql_on: ${keyword_events.keyword_composite_key} = ${keyword.keyword_composite_key} ;;
  }
  join: ad_group {
    relationship: one_to_one
    type: left_outer
    sql_on: ${keyword_events.ad_group_composite_key} = ${ad_group.ad_group_composite_key} ;;
  }
  join: campaign {
    relationship: one_to_one
    type: left_outer
    sql_on: ${keyword_events.campaign_composite_key} = ${campaign.campaign_composite_key} ;;
  }
  join: advertiser {
    relationship: one_to_one
    type: left_outer
    sql_on: ${keyword_events.advertiser_composite_key} = ${advertiser.advertiser_composite_key} ;;
  }
  join: floodlight_activity {
    relationship: many_to_one
    type: left_outer
    sql_on: ${keyword_conversion_events.floodlight_activity_id} = ${floodlight_activity.floodlight_activity_id} ;;
  }
}
