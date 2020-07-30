view: product {
  sql_table_name: `SA360.ProductAdvertised_21700000000010391`
    ;;

  dimension: product_composite_key {
    hidden: yes
    primary_key: yes
    sql: ${product_id} || ' ' || ${_data_date} ;;
  }

  dimension_group: _data {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._DATA_DATE ;;
  }

  dimension_group: _latest {
    hidden: yes
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._LATEST_DATE ;;
  }

  dimension: advertiser_id {
    type: string
    sql: ${TABLE}.advertiserId ;;
  }

  dimension: agency_id {
    type: string
    sql: ${TABLE}.agencyId ;;
  }

  dimension_group: creation {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.creationTimestamp ;;
  }

  dimension_group: last_modified {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.lastModifiedTimestamp ;;
  }

  dimension: product_age_group {
    label: "Age Group"
    type: string
    sql: ${TABLE}.productAgeGroup ;;
  }

  dimension: product_availability {
    label: "Availability"
    type: string
    sql: ${TABLE}.productAvailability ;;
  }

  dimension: product_brand {
    label: "Brand"
    type: string
    sql: ${TABLE}.productBrand ;;
  }

  dimension: product_category {
    label: "Category"
    type: string
    sql: ${TABLE}.productCategory ;;
  }

  dimension: product_category_level1 {
    label: "Level 1"
    group_label: "Category Levels"
    type: string
    sql: ${TABLE}.productCategoryLevel1 ;;
  }

  dimension: product_category_level2 {
    label: "Level 2"
    group_label: "Category Levels"
    type: string
    sql: ${TABLE}.productCategoryLevel2 ;;
  }

  dimension: product_category_level3 {
    label: "Level 3"
    group_label: "Category Levels"
    type: string
    sql: ${TABLE}.productCategoryLevel3 ;;
  }

  dimension: product_category_level4 {
    label: "Level 4"
    group_label: "Category Levels"
    type: string
    sql: ${TABLE}.productCategoryLevel4 ;;
  }

  dimension: product_category_level5 {
    label: "Level 5"
    group_label: "Category Levels"
    type: string
    sql: ${TABLE}.productCategoryLevel5 ;;
  }

  dimension: product_channel {
    label: "Channel"
    description: "The sales channel attribute of a product item: Online or Local"
    type: string
    sql: ${TABLE}.productChannel ;;
  }

  dimension: product_channel_exclusivity {
    label: "Channel Exclusivity"
    type: string
    sql: ${TABLE}.productChannelExclusivity ;;
  }

  dimension: product_color {
    label: "Color"
    type: string
    sql: ${TABLE}.productColor ;;
  }

  dimension: product_condition {
    label: "Condition"
    type: string
    sql: ${TABLE}.productCondition ;;
  }

  dimension: product_country {
    description: "The country registered for the product's inventory feed."
    label: "Country"
    type: string
    map_layer_name: countries
    sql: ${TABLE}.productCountry ;;
  }

  dimension: product_custom_label0 {
    group_label: "Custom Labels"
    label: "Label 0"
    type: string
    sql: ${TABLE}.productCustomLabel0 ;;
  }

  dimension: product_custom_label1 {
    group_label: "Custom Labels"
    label: "Label 1"
    type: string
    sql: ${TABLE}.productCustomLabel1 ;;
  }

  dimension: product_custom_label2 {
    group_label: "Custom Labels"
    label: "Label 2"
    type: string
    sql: ${TABLE}.productCustomLabel2 ;;
  }

  dimension: product_custom_label3 {
    group_label: "Custom Labels"
    label: "Label 3"
    type: string
    sql: ${TABLE}.productCustomLabel3 ;;
  }

  dimension: product_custom_label4 {
    group_label: "Custom Labels"
    label: "Label 4"
    type: string
    sql: ${TABLE}.productCustomLabel4 ;;
  }

  dimension: product_gender {
    description: "The gender attribute of a product item."
    label: "Gender"
    type: string
    sql: ${TABLE}.productGender ;;
  }

  dimension: product_gtin {
    description: "The GTIN attribute (Global Trading Item Number) of a product item."
    label: "GTIN"
    type: string
    sql: ${TABLE}.productGtin ;;
  }

  dimension: product_id {
    type: string
    sql: ${TABLE}.productId ;;
  }

  dimension: product_item_group_id {
    label: "Item Group ID"
    type: string
    sql: ${TABLE}.productItemGroupId ;;
  }

  dimension: product_landing_page_url {
    label: "Landing Page URL"
    type: string
    sql: ${TABLE}.productLandingPageUrl ;;
  }

  dimension: product_language {
    label: "Language"
    description: "The language registered for the product's inventory feed."
    type: string
    sql: ${TABLE}.productLanguage ;;
  }

  dimension: product_material {
    label: "Material"
    type: string
    sql: ${TABLE}.productMaterial ;;
  }

  dimension: product_mpn {
    label: "MPN"
    description: "The MPN attribute (Manufacturer Part Number) of a product item."
    type: string
    sql: ${TABLE}.productMpn ;;
  }

  dimension: product_pattern {
    label: "Pattern"
    type: string
    sql: ${TABLE}.productPattern ;;
  }

  dimension: product_size {
    label: "Size"
    type: string
    sql: ${TABLE}.productSize ;;
  }

  dimension: product_store_id {
    label: "Store ID"
    type: string
    sql: ${TABLE}.productStoreId ;;
  }

  dimension: product_title {
    label: "Title"
    type: string
    sql: ${TABLE}.productTitle ;;
  }

  dimension: product_type_level1 {
    group_label: "Type Levels"
    label: "Level 1"
    type: string
    sql: ${TABLE}.productTypeLevel1 ;;
  }

  dimension: product_type_level2 {
    group_label: "Type Levels"
    label: "Level 2"
    type: string
    sql: ${TABLE}.productTypeLevel2 ;;
  }

  dimension: product_type_level3 {
    group_label: "Type Levels"
    label: "Level 3"
    type: string
    sql: ${TABLE}.productTypeLevel3 ;;
  }

  dimension: product_type_level4 {
    group_label: "Type Levels"
    label: "Level 4"
    type: string
    sql: ${TABLE}.productTypeLevel4 ;;
  }

  dimension: product_type_level5 {
    group_label: "Type Levels"
    label: "Level 5"
    type: string
    sql: ${TABLE}.productTypeLevel5 ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  dimension: product_price {
    label: "Price"
    value_format_name: usd
    type: number
    sql: ${TABLE}.productPrice ;;
  }

  measure: total_price {
    value_format_name: usd
    type: sum
    sql: ${product_price} ;;
  }

  measure: average_price {
    value_format_name: usd
    type: average
    sql: ${product_price} ;;
  }

  dimension: product_sale_price {
    hidden: yes
    type: number
    value_format_name: usd
    sql: ${TABLE}.productSalePrice ;;
  }

  dimension: product_cost_of_goods_sold {
    label: "Cost of Goods Sold"
    type: number
    value_format_name: usd
    sql: ${TABLE}.productCostOfGoodsSold ;;
  }

  measure: total_cost_of_goods_sold {
    type: sum
    value_format_name: usd
    sql: ${product_cost_of_goods_sold} ;;
  }

  measure: average_cost_of_goods_sold {
    type: average
    value_format_name: usd
    sql: ${product_cost_of_goods_sold} ;;
  }

  dimension: gross_margin {
    type: number
    value_format_name: usd
    sql: ${product_sale_price} - ${product_cost_of_goods_sold} ;;
  }

  measure: total_gross_margin {
    type:  sum
    value_format_name: usd
    sql: ${gross_margin} ;;
  }

  measure: average_gross_margin {
    type: average
    value_format_name: usd
    sql: ${gross_margin} ;;
  }

}
