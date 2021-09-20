connection: "pentahedron"

# include all the views
include: "/views/**/*.view"

include: "/**/*.dashboard"

datagroup: block_sa360_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: block_sa360_default_datagroup


#### The Rollup tables need work - they do not rollup to a single line, and most of them don't because of multiple labels
#### The rest of the code is good and once we get a one-to-one match for the id's in the dimensional tables we should be good
#### ALSO campaign name is NOT unique to campaign ID
#### ALSO, ranking by modified date and selecting the most recent does NOT limit to unique ID's either, go figure



explore: p_advertiser_events {
  label: "(1) Advertiser Events"
  description: "Performance metrics across all of an advertiser's engine accounts and campaigns."
  join: p_advertiser_conversion_events {
    view_label: "P Advertiser Events"
    relationship: one_to_one
    type: left_outer
    sql_on: ${p_advertiser_events.advertiser_id} = ${p_advertiser_conversion_events.advertiser_id}
            AND ${p_advertiser_events.date_date} = ${p_advertiser_conversion_events.date_date}
            AND ${p_advertiser_events.device_segment} = ${p_advertiser_conversion_events.device_segment};;
  }
  # Join Dimensional Tables
  join: p_advertiser_rollup {
    relationship: many_to_one
    type: inner
    sql_on: ${p_advertiser_events.advertiser_id} = ${p_advertiser_rollup.advertiser_id} ;;
#     sql_on: LEFT${p_advertiser_events.advertiser_composite_key} = ${p_advertiser_events.advertiser_composite_key} ;;
  }
}

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

explore: p_keyword_events {
  label: "(4) Keyword Events"
  description: "Performance metrics for Keywords including Floodlight attributes."
  join: p_keyword_conversion_events {
    view_label: "Keyword Events"
    relationship: one_to_one
    type: full_outer
    sql_on: ${p_keyword_events.keyword_id} = ${p_keyword_conversion_events.keyword_id}
            AND ${p_keyword_events.date_date} = ${p_keyword_conversion_events.date_date}
            AND ${p_keyword_events.device_segment} = ${p_keyword_conversion_events.device_segment}
            AND ${p_keyword_events.ad_id} = ${p_keyword_conversion_events.ad_id}
            AND ${p_keyword_events.ad_group_id} = ${p_keyword_conversion_events.ad_group_id};;
  }
  # Join Dimensional Tables
  join: p_account_rollup {
    view_label: "Keyword Events"
    relationship: one_to_one
    type: left_outer
    sql_on: ${p_account_rollup.account_id} = ${p_keyword_events.account_id} ;;
  }
  join: p_keyword_rollup {
    relationship: one_to_one
    type: left_outer
    sql_on: ${p_keyword_events.keyword_id} = ${p_keyword_rollup.keyword_id} ;;
  }
  join: p_ad_group_rollup {
    relationship: one_to_one
    type: left_outer
    sql_on: ${p_keyword_events.ad_group_id} = ${p_ad_group_rollup.ad_group_id} ;;
  }
  join: p_campaign_rollup {
    relationship: one_to_one
    type: left_outer
    sql_on: ${p_keyword_events.campaign_id} = ${p_campaign_rollup.id} ;;
  }
  join: p_advertiser_rollup {
    relationship: one_to_one
    type: left_outer
    sql_on: ${p_keyword_events.advertiser_id} = ${p_advertiser_rollup.advertiser_id}} ;;
  }
  join: p_floodlight_activity {
    relationship: many_to_one
    type: left_outer
    sql_on: ${p_keyword_conversion_events.floodlight_activity_id} = ${p_floodlight_activity.floodlight_activity_id} ;;
  }
}
