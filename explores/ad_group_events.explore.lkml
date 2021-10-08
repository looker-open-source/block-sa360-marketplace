include: "/views/*.view"

explore: ad_group_events {
  label: "(3) Ad Group Events"
  description: "Performance metrics for Ad Groups."
  join: ad_group_conversion_events {
    view_label: "Ad Group Events"
    relationship: one_to_one
    type: left_outer
    sql_on: ${ad_group_events.ad_group_id} = ${ad_group_conversion_events.ad_group_id}
            AND ${ad_group_events._data_date} = ${ad_group_conversion_events._data_date}
            AND ${ad_group_events.device_segment} = ${ad_group_conversion_events.device_segment};;
  }
  join: account {
    view_label: "Ad Group Events"
    relationship: one_to_one
    type: left_outer
    sql_on: ${ad_group_events.account_composite_key} = ${account.account_composite_key} ;;
  }
  # Join Dimensional Tables
  join: ad_group {
    relationship: one_to_one
    type: left_outer
    sql_on: ${ad_group_events.ad_group_composite_key} = ${ad_group.ad_group_composite_key} ;;
  }
  join: campaign {
    relationship: one_to_one
    type: left_outer
    sql_on: ${ad_group_events.campaign_composite_key} = ${campaign.campaign_composite_key} ;;
  }
  join: advertiser {
    relationship: one_to_one
    type: left_outer
    sql_on: ${ad_group_events.advertiser_composite_key} = ${advertiser.advertiser_composite_key} ;;
  }
}
