include: "/views/*.view"

explore: campaign_events {
  label: "(2) Campaign Events"
  description: "Performance metrics for Campaigns."
  join: campaign_conversion_events {
    view_label: "Campaign Events"
    relationship: one_to_one
    type: left_outer
    sql_on: ${campaign_events.campaign_id} = ${campaign_conversion_events.campaign_id}
            AND ${campaign_events._data_date} = ${campaign_conversion_events._data_date}
            AND ${campaign_events.device_segment} = ${campaign_conversion_events.device_segment};;
  }
  join: account {
    view_label: "Campaign Events"
    relationship: one_to_one
    type: left_outer
    sql_on: ${campaign_events.account_composite_key} = ${account.account_composite_key} ;;
  }
  # Join Dimensional Tables
  join: campaign {
    relationship: one_to_one
    type: left_outer
    sql_on: ${campaign_events.campaign_composite_key} = ${campaign.campaign_composite_key} ;;
  }
  join: advertiser {
    relationship: one_to_one
    type: left_outer
    sql_on: ${campaign_events.advertiser_composite_key} = ${advertiser.advertiser_composite_key} ;;
  }
}
