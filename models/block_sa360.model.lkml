connection: "pentahedron"

# include all the views
include: "/views/**/*.view"

datagroup: block_sa360_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: block_sa360_default_datagroup

explore: keyword_device_stats {
  label: "(1) Search Data"
  join: keyword {
    relationship: many_to_one
    type: left_outer
    sql_on: ${keyword_device_stats.keyword_id} = ${keyword.keyword_id} ;;
  }
  join: ad_group {
    relationship: many_to_one
    type: left_outer
    sql_on: ${keyword_device_stats.ad_group_id} = ${ad_group.ad_group_id} ;;
  }
  join: campaign {
    relationship: many_to_one
    type: left_outer
    sql_on: ${keyword_device_stats.campaign_id} = ${campaign.campaign_id} ;;
  }
  join: advertiser {
    relationship: many_to_one
    type: left_outer
    sql_on: ${keyword_device_stats.advertiser_id} = ${advertiser.advertiser_id} ;;
  }
}

explore: visit {
  label: "(2) Visit Data"
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
# explore: ad_group_device_stats {}
#
# explore: ad_group_feed_item_stats {}
#
# explore: ad_group_floodlight_and_device_stats {}
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
# explore: advertiser_device_stats {}
#
# explore: advertiser_floodlight_and_device_stats {}
#
# explore: advertiser_stats {}
#
# explore: bid_strategy {}
#
# explore: bid_strategy_stats {}
#
# explore: campaign {}
#
# explore: campaign_device_stats {}
#
# explore: campaign_feed_item_stats {}
#
# explore: campaign_floodlight_and_device_stats {}
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
# explore: keyword_floodlight_and_device_stats {}
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
