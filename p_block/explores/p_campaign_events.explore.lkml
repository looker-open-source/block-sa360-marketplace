include: "/p_block/views/*.view"

explore: p_campaign_events {
  label: "(2) Campaign Events"
  description: "Performance metrics for Campaigns."
  join: p_campaign_conversion_events {
    view_label: "Campaign Events"
    relationship: one_to_one
    type: left_outer
    sql_on: ${p_campaign_events.campaign_id} = ${p_campaign_conversion_events.campaign_id}
            AND ${p_campaign_events.date_date} = ${p_campaign_conversion_events.date_date}
            AND ${p_campaign_events.device_segment} = ${p_campaign_conversion_events.device_segment};;
  }
  join: p_account_rollup {
    view_label: "Campaign Events"
    relationship: one_to_one
    type: left_outer
    sql_on: ${p_campaign_events.account_id} = ${p_account_rollup.account_id} ;;
  }
  # Join Dimensional Tables
  join: p_campaign_rollup {
    relationship: one_to_one
    type: left_outer
    sql_on: ${p_campaign_events.campaign_id} = ${p_campaign_rollup.id} ;;
  }
  join: p_advertiser_rollup {
    relationship: one_to_one
    type: left_outer
    sql_on: ${p_campaign_events.advertiser_id} = ${p_advertiser_rollup.advertiser_id}} ;;
  }
}
