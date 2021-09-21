include: "/views/*.view"

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
