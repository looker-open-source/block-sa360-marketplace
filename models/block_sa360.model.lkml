connection: "pentahedron"

# include all the views
include: "/views/**/*.view"

datagroup: block_sa360_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: block_sa360_default_datagroup



explore: advertiser_events {
  label: "(1) Advertiser Events"
  join: advertiser_conversion_events {
    view_label: "Advertiser Events"
    relationship: one_to_one
    type: left_outer
    sql_on: ${advertiser_events.advertiser_id} = ${advertiser_conversion_events.advertiser_id}
            AND ${advertiser_events._data_date} = ${advertiser_conversion_events._data_date}
            AND ${advertiser_events.device_segment} = ${advertiser_conversion_events.device_segment};;
  }
  # Join Dimensional Tables
  join: advertiser {
    relationship: many_to_one
    type: left_outer
    sql_on: ${advertiser_events.advertiser_id} = ${advertiser.advertiser_id} ;;
  }
}

explore: campaign_events {
  label: "(2) Campaign Events"
  join: campaign_conversion_events {
    view_label: "Campaign Events"
    relationship: one_to_one
    type: left_outer
    sql_on: ${campaign_events.campaign_id} = ${campaign_conversion_events.campaign_id}
            AND ${campaign_events._data_date} = ${campaign_conversion_events._data_date}
            AND ${campaign_events.device_segment} = ${campaign_conversion_events.device_segment};;
  }
  # Join Dimensional Tables
  join: campaign {
    relationship: many_to_one
    type: left_outer
    sql_on: ${campaign_events.campaign_id} = ${campaign.campaign_id} ;;
  }
  join: advertiser {
    relationship: many_to_one
    type: left_outer
    sql_on: ${campaign_events.advertiser_id} = ${advertiser.advertiser_id} ;;
  }
}

explore: ad_group_events {
  label: "(3) Ad Group Events"
  join: ad_group_conversion_events {
    view_label: "Ad Group Events"
    relationship: one_to_one
    type: left_outer
    sql_on: ${ad_group_events.ad_group_id} = ${ad_group_conversion_events.ad_group_id}
            AND ${ad_group_events._data_date} = ${ad_group_conversion_events._data_date}
            AND ${ad_group_events.device_segment} = ${ad_group_conversion_events.device_segment};;
  }
  # Join Dimensional Tables
  join: ad_group {
    relationship: many_to_one
    type: left_outer
    sql_on: ${ad_group_events.ad_group_id} = ${ad_group.ad_group_id} ;;
  }
  join: campaign {
    relationship: many_to_one
    type: left_outer
    sql_on: ${ad_group_events.campaign_id} = ${campaign.campaign_id} ;;
  }
  join: advertiser {
    relationship: many_to_one
    type: left_outer
    sql_on: ${ad_group_events.advertiser_id} = ${advertiser.advertiser_id} ;;
  }
}

explore: keyword_events {
  label: "(4) Keyword Events"
  join: keyword_conversion_events {
    view_label: "Keyword Events"
    relationship: one_to_one
    type: left_outer
    sql_on: ${keyword_events.keyword_id} = ${keyword_conversion_events.keyword_id}
            AND ${keyword_events._data_date} = ${keyword_conversion_events._data_date}
            AND ${keyword_events.device_segment} = ${keyword_conversion_events.device_segment};;
  }
  # Join Dimensional Tables
  join: keyword {
    relationship: many_to_one
    type: left_outer
    sql_on: ${keyword_events.keyword_id} = ${keyword.keyword_id} ;;
  }
  join: ad_group {
    relationship: many_to_one
    type: left_outer
    sql_on: ${keyword_events.ad_group_id} = ${ad_group.ad_group_id} ;;
  }
  join: campaign {
    relationship: many_to_one
    type: left_outer
    sql_on: ${keyword_events.campaign_id} = ${campaign.campaign_id} ;;
  }
  join: advertiser {
    relationship: many_to_one
    type: left_outer
    sql_on: ${keyword_events.advertiser_id} = ${advertiser.advertiser_id} ;;
  }
}


###UNUSED EXPLORES

# explore: account {}
#
# explore: account_device_stats {}
#
# explore: account_floodlight_and_device_stats {}
#
# explore: account_stats {}
#
# explore: ad {}
#
# explore: ad_device_stats {}
#
# explore: ad_floodlight_and_device_stats {}
#
# explore: ad_group {}
#
# explore: ad_group_events {}
#
# explore: ad_group_feed_item_stats {}
#
# explore: ad_group_conversion_events {}
#
# explore: ad_group_floodlight_and_feed_item_stats {}
#
# explore: ad_group_stats {}
#
# explore: ad_group_target {}
#
# explore: ad_group_target_device_stats {}
#
# explore: ad_group_target_floodlight_and_device_stats {}
#
# explore: advertiser {}
#
# explore: advertiser_events {}
#
# explore: advertiser_conversion_events {}
#
# explore: advertiser_stats {}
#
# explore: bid_strategy {}
#
# explore: bid_strategy_stats {}
#
# explore: campaign {}
#
# explore: campaign_events {}
#
# explore: campaign_feed_item_stats {}
#
# explore: campaign_conversion_events {}
#
# explore: campaign_floodlight_and_feed_item_stats {}
#
# explore: campaign_floodtlight_and_device_stats {}
#
# explore: campaign_stats {}
#
# explore: campaign_target {}
#
# explore: campaign_target_device_stats {}
#
# explore: campaign_target_floodlight_and_device_stats {}
#
# explore: feed_item {}
#
# explore: feed_item_floodlight_stats {}
#
# explore: feed_item_stats {}
#
# explore: floodlight_activity {}
#
# explore: keyword {}
#
# explore: keyword_conversion_events {}
#
# explore: keyword_stats {}
#
# explore: negative_ad_group_keyword {}
#
# explore: negative_ad_group_target {}
#
# explore: negative_campaign_keyword {}
#
# explore: negative_campaign_target {}
#
# explore: product_advertised {}
#
# explore: product_advertised_device_stats {}
#
# explore: product_advertised_floodlight_and_device_stats {}
#
# explore: product_group {}
#
# explore: product_group_stats {}
#
# explore: product_lead_and_cross_sell_floodlight_stats {}
