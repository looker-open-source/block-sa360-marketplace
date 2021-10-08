include: "/views/*.view"

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
    relationship: one_to_one
    type: left_outer
    sql_on: ${advertiser.advertiser_composite_key} = ${advertiser_events.advertiser_composite_key} ;;
  }
}
