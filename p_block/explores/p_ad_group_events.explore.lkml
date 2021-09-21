include: "/p_block/views/*.view"

explore: p_ad_group_events {
  label: "(3) Ad Group Events"
  description: "Performance metrics for Ad Groups."
  join: p_ad_group_conversion_events {
    view_label: "Ad Group Events"
    relationship: one_to_one
    type: left_outer
    sql_on: ${p_ad_group_events.ad_group_id} = ${p_ad_group_conversion_events.ad_group_id}
            AND ${p_ad_group_events.date_date} = ${p_ad_group_conversion_events.date_date}
            AND ${p_ad_group_events.device_segment} = ${p_ad_group_conversion_events.device_segment};;
  }
  join: p_account_rollup {
    view_label: "Ad Group Events"
    relationship: one_to_one
    type: left_outer
    sql_on: ${p_ad_group_events.account_id} = ${p_account_rollup.account_id} ;;
  }
  # Join Dimensional Tables
  join: p_ad_group_rollup {
    relationship: one_to_one
    type: left_outer
    sql_on: ${p_ad_group_events.ad_group_id} = ${p_ad_group_rollup.ad_group_id} ;;
  }
  join: p_campaign_rollup {
    relationship: one_to_one
    type: left_outer
    sql_on: ${p_ad_group_events.campaign_id} = ${p_campaign_rollup.id} ;;
  }
  join: p_advertiser_rollup {
    relationship: one_to_one
    type: left_outer
    sql_on: ${p_ad_group_events.advertiser_id} = ${p_advertiser_rollup.advertiser_id}} ;;
  }
}
