connection: "pentahedron"

# include all the views
include: "/views/**/*.view"

datagroup: block_sa360_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: block_sa360_default_datagroup

explore: account_device_stats_21700000000010391 {}

explore: account_floodlight_and_device_stats_21700000000010391 {}

explore: ad_device_stats_21700000000010391 {}

explore: ad_floodlight_and_device_stats_21700000000010391 {}

explore: ad_group_device_stats_21700000000010391 {}

explore: ad_group_floodlight_and_device_stats_21700000000010391 {}

explore: ad_group_target_device_stats_21700000000010391 {}

explore: ad_group_target_floodlight_and_device_stats_21700000000010391 {}

explore: advertiser_device_stats_21700000000010391 {}

explore: advertiser_floodlight_and_device_stats_21700000000010391 {}

explore: campaign_device_stats_21700000000010391 {}

explore: campaign_floodlight_and_device_stats_21700000000010391 {}

explore: campaign_floodtlight_and_device_stats_21700000000010391 {}

explore: campaign_target_device_stats_21700000000010391 {}

explore: campaign_target_floodlight_and_device_stats_21700000000010391 {}

explore: keyword_device_stats_21700000000010391 {}

explore: keyword_floodlight_and_device_stats_21700000000010391 {}

explore: p_account_device_stats_21700000000010391 {}

explore: p_account_floodlight_and_device_stats_21700000000010391 {}

explore: p_ad_device_stats_21700000000010391 {}

explore: p_ad_floodlight_and_device_stats_21700000000010391 {}

explore: p_ad_group_device_stats_21700000000010391 {}

explore: p_ad_group_floodlight_and_device_stats_21700000000010391 {}

explore: p_ad_group_target_device_stats_21700000000010391 {}

explore: p_ad_group_target_floodlight_and_device_stats_21700000000010391 {}

explore: p_advertiser_device_stats_21700000000010391 {}

explore: p_advertiser_floodlight_and_device_stats_21700000000010391 {}

explore: p_campaign_device_stats_21700000000010391 {}

explore: p_campaign_floodlight_and_device_stats_21700000000010391 {}

explore: p_campaign_floodtlight_and_device_stats_21700000000010391 {}

explore: p_campaign_target_device_stats_21700000000010391 {}

explore: p_campaign_target_floodlight_and_device_stats_21700000000010391 {}

explore: p_keyword_device_stats_21700000000010391 {}

explore: p_keyword_floodlight_and_device_stats_21700000000010391 {}

explore: p_product_advertised_device_stats_21700000000010391 {}

explore: p_product_advertised_floodlight_and_device_stats_21700000000010391 {}

explore: product_advertised_device_stats_21700000000010391 {}

explore: product_advertised_floodlight_and_device_stats_21700000000010391 {}














# UNUSED EXPLORES ========================================

# explore: account_21700000000010391 {}
#
# explore: account_stats_21700000000010391 {}
#
# explore: ad_21700000000010391 {}
#
# explore: ad_group_21700000000010391 {}
#
# explore: ad_group_feed_item_stats_21700000000010391 {}
#
# explore: ad_group_floodlight_and_feed_item_stats_21700000000010391 {}
#
# explore: ad_group_stats_21700000000010391 {}
#
# explore: ad_group_target_21700000000010391 {}
#
# explore: advertiser_21700000000010391 {}
#
# explore: advertiser_stats_21700000000010391 {}
#
# explore: bid_strategy_21700000000010391 {}
#
# explore: bid_strategy_stats_21700000000010391 {}
#
# explore: campaign_21700000000010391 {}
#
# explore: campaign_feed_item_stats_21700000000010391 {}
#
# explore: campaign_floodlight_and_feed_item_stats_21700000000010391 {}
#
# explore: campaign_stats_21700000000010391 {}
#
# explore: campaign_target_21700000000010391 {}
#
# explore: feed_item_21700000000010391 {}
#
# explore: feed_item_floodlight_stats_21700000000010391 {}
#
# explore: feed_item_stats_21700000000010391 {}
#
# explore: floodlight_activity_21700000000010391 {}
#
# explore: keyword_21700000000010391 {}
#
# explore: keyword_stats_21700000000010391 {}
#
# explore: negative_ad_group_keyword_21700000000010391 {}
#
# explore: negative_ad_group_target_21700000000010391 {}
#
# explore: negative_campaign_keyword_21700000000010391 {}
#
# explore: negative_campaign_target_21700000000010391 {}
#
# explore: p_account_21700000000010391 {}
#
# explore: p_account_stats_21700000000010391 {}
#
# explore: p_ad_21700000000010391 {}
#
# explore: p_ad_group_21700000000010391 {}
#
# explore: p_ad_group_feed_item_stats_21700000000010391 {}
#
# explore: p_ad_group_floodlight_and_feed_item_stats_21700000000010391 {}
#
# explore: p_ad_group_stats_21700000000010391 {}
#
# explore: p_ad_group_target_21700000000010391 {}
#
# explore: p_advertiser_21700000000010391 {}
#
# explore: p_advertiser_stats_21700000000010391 {}
#
# explore: p_bid_strategy_21700000000010391 {}
#
# explore: p_bid_strategy_stats_21700000000010391 {}
#
# explore: p_campaign_21700000000010391 {}
#
# explore: p_campaign_feed_item_stats_21700000000010391 {}
#
# explore: p_campaign_floodlight_and_feed_item_stats_21700000000010391 {}
#
# explore: p_campaign_stats_21700000000010391 {}
#
# explore: p_campaign_target_21700000000010391 {}
#
# explore: p_conversion_21700000000010391 {}
#
# explore: p_feed_item_21700000000010391 {}
#
# explore: p_feed_item_floodlight_stats_21700000000010391 {}
#
# explore: p_feed_item_stats_21700000000010391 {}
#
# explore: p_floodlight_activity_21700000000010391 {}
#
# explore: p_keyword_21700000000010391 {}
#
# explore: p_keyword_stats_21700000000010391 {}
#
# explore: p_negative_ad_group_keyword_21700000000010391 {}
#
# explore: p_negative_ad_group_target_21700000000010391 {}
#
# explore: p_negative_campaign_keyword_21700000000010391 {}
#
# explore: p_negative_campaign_target_21700000000010391 {}
#
# explore: p_product_advertised_21700000000010391 {}
#
# explore: p_product_group_21700000000010391 {}
#
# explore: p_product_group_stats_21700000000010391 {}
#
# explore: p_product_lead_and_cross_sell_floodlight_stats_21700000000010391 {}
#
# explore: p_visit_21700000000010391 {}
#
# explore: product_advertised_21700000000010391 {}
#
# explore: product_group_21700000000010391 {}
#
# explore: product_group_stats_21700000000010391 {}
#
# explore: product_lead_and_cross_sell_floodlight_stats_21700000000010391 {}
#
# explore: visit_21700000000010391 {}
