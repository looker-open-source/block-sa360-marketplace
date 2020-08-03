connection: "@{CONNECTION_NAME}"

include: "/*.dashboard.lookml"
include: "/views/**/*.view"
include: "//@{CONFIG_PROJECT_NAME}/*.view.lkml"
include: "//@{CONFIG_PROJECT_NAME}/*.model.lkml"
include: "//@{CONFIG_PROJECT_NAME}/*.dashboard"


datagroup: block_sa360_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: block_sa360_default_datagroup


explore: advertiser_events {
  extends: [advertiser_events_config]
}

explore: campaign_events {
  extends: [campaign_events_config]
}

explore: ad_group_events {
  extends: [ad_group_events_config]
}

explore: keyword_events {
  extends: [keyword_events_config]
}

explore: product_events {
  extends: [product_events_config]
}


explore: advertiser_events_core {
  label: "(1) Advertiser Events"
  description: "Performance metrics across all of an advertiser's engine accounts and campaigns."
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
    relationship: one_to_one
    type: left_outer
    sql_on: ${advertiser.advertiser_composite_key} = ${advertiser_events.advertiser_composite_key} ;;
  }
}

explore: campaign_events_core {
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

explore: ad_group_events_core {
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

explore: keyword_events_core {
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

explore: product_events_core {
  description: "Performance metrics for products defined in an inventory feed and advertised in a shopping campaign."
  join: product_conversion_events {
    view_label: "Product Events"
    relationship: one_to_one
    type: left_outer
    sql_on: ${product_conversion_events.product_id} = ${product_events.product_id}
            AND ${product_conversion_events._data_date} = ${product_events._data_date}
            AND ${product_conversion_events.device_segment} = ${product_events.device_segment};;
  }
  join: account {
    view_label: "Product Events"
    relationship: one_to_one
    type: left_outer
    sql_on: ${product_conversion_events.product_composite_key} = ${account.account_composite_key} ;;
  }
  join: product {
    relationship: one_to_one
    type: left_outer
    sql_on: ${product_conversion_events.product_composite_key} = ${product.product_composite_key} ;;
  }
  join: advertiser {
    relationship: one_to_one
    type: left_outer
    sql_on: ${product_conversion_events.product_composite_key} = ${advertiser.advertiser_composite_key} ;;
  }
}
