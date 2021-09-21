include: "/p_block/views/*.view"

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
