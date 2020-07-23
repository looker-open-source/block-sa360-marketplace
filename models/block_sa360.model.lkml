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
    relationship: many_to_one
    type: left_outer
    sql_on: ${advertiser_events.advertiser_id} = ${advertiser.advertiser_id} ;;
  }
  join: account {
    view_label: "Advertiser"
    relationship: many_to_one
    type: left_outer
    sql_on: ${account.advertiser_id} = ${advertiser.advertiser_id} ;;
  }
}

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
    relationship: many_to_one
    type: left_outer
    sql_on: ${account.account_id} = ${campaign_events.account_id} ;;
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
    relationship: many_to_one
    type: left_outer
    sql_on: ${account.account_id} = ${ad_group_events.account_id} ;;
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
  description: "Performance metrics for Keywords including Floodlight attributes."
  join: keyword_conversion_events {
    view_label: "Keyword Events"
    relationship: one_to_one
    type: left_outer
    sql_on: ${keyword_events.keyword_id} = ${keyword_conversion_events.keyword_id}
            AND ${keyword_events._data_date} = ${keyword_conversion_events._data_date}
            AND ${keyword_events.device_segment} = ${keyword_conversion_events.device_segment};;
  }
  join: account {
    view_label: "Keyword Events"
    relationship: many_to_one
    type: left_outer
    sql_on: ${account.account_id} = ${keyword_events.account_id} ;;
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
  join: floodlight_activity {
    relationship: many_to_one
    type: left_outer
    sql_on: ${keyword_conversion_events.floodlight_activity_id} = ${floodlight_activity.floodlight_activity_id} ;;
  }
}

explore: product_events {
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
    relationship: many_to_one
    type: left_outer
    sql_on: ${account.account_id} = ${product_conversion_events.account_id} ;;
  }
  join: product {
    relationship: many_to_one
    type: left_outer
    sql_on: ${product_events.product_id} = ${product.product_id} ;;
  }
  join: advertiser {
    relationship: many_to_one
    type: left_outer
    sql_on: ${product_events.advertiser_id} = ${advertiser.advertiser_id} ;;
  }

}
