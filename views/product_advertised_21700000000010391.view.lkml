view: product_advertised_21700000000010391 {
  sql_table_name: `SA360.ProductAdvertised_21700000000010391`
    ;;

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

  dimension_group: creation_timestamp {
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

  dimension_group: last_modified_timestamp {
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
    type: string
    sql: ${TABLE}.productAgeGroup ;;
  }

  dimension: product_availability {
    type: string
    sql: ${TABLE}.productAvailability ;;
  }

  dimension: product_brand {
    type: string
    sql: ${TABLE}.productBrand ;;
  }

  dimension: product_category {
    type: string
    sql: ${TABLE}.productCategory ;;
  }

  dimension: product_category_level1 {
    type: string
    sql: ${TABLE}.productCategoryLevel1 ;;
  }

  dimension: product_category_level2 {
    type: string
    sql: ${TABLE}.productCategoryLevel2 ;;
  }

  dimension: product_category_level3 {
    type: string
    sql: ${TABLE}.productCategoryLevel3 ;;
  }

  dimension: product_category_level4 {
    type: string
    sql: ${TABLE}.productCategoryLevel4 ;;
  }

  dimension: product_category_level5 {
    type: string
    sql: ${TABLE}.productCategoryLevel5 ;;
  }

  dimension: product_channel {
    type: string
    sql: ${TABLE}.productChannel ;;
  }

  dimension: product_channel_exclusivity {
    type: string
    sql: ${TABLE}.productChannelExclusivity ;;
  }

  dimension: product_color {
    type: string
    sql: ${TABLE}.productColor ;;
  }

  dimension: product_condition {
    type: string
    sql: ${TABLE}.productCondition ;;
  }

  dimension: product_cost_of_goods_sold {
    type: number
    sql: ${TABLE}.productCostOfGoodsSold ;;
  }

  dimension: product_country {
    type: string
    sql: ${TABLE}.productCountry ;;
  }

  dimension: product_custom_label0 {
    type: string
    sql: ${TABLE}.productCustomLabel0 ;;
  }

  dimension: product_custom_label1 {
    type: string
    sql: ${TABLE}.productCustomLabel1 ;;
  }

  dimension: product_custom_label2 {
    type: string
    sql: ${TABLE}.productCustomLabel2 ;;
  }

  dimension: product_custom_label3 {
    type: string
    sql: ${TABLE}.productCustomLabel3 ;;
  }

  dimension: product_custom_label4 {
    type: string
    sql: ${TABLE}.productCustomLabel4 ;;
  }

  dimension: product_gender {
    type: string
    sql: ${TABLE}.productGender ;;
  }

  dimension: product_gtin {
    type: string
    sql: ${TABLE}.productGtin ;;
  }

  dimension: product_id {
    type: string
    sql: ${TABLE}.productId ;;
  }

  dimension: product_item_group_id {
    type: string
    sql: ${TABLE}.productItemGroupId ;;
  }

  dimension: product_landing_page_url {
    type: string
    sql: ${TABLE}.productLandingPageUrl ;;
  }

  dimension: product_language {
    type: string
    sql: ${TABLE}.productLanguage ;;
  }

  dimension: product_material {
    type: string
    sql: ${TABLE}.productMaterial ;;
  }

  dimension: product_mpn {
    type: string
    sql: ${TABLE}.productMpn ;;
  }

  dimension: product_pattern {
    type: string
    sql: ${TABLE}.productPattern ;;
  }

  dimension: product_price {
    type: number
    sql: ${TABLE}.productPrice ;;
  }

  dimension: product_sale_price {
    type: number
    sql: ${TABLE}.productSalePrice ;;
  }

  dimension: product_size {
    type: string
    sql: ${TABLE}.productSize ;;
  }

  dimension: product_store_id {
    type: string
    sql: ${TABLE}.productStoreId ;;
  }

  dimension: product_title {
    type: string
    sql: ${TABLE}.productTitle ;;
  }

  dimension: product_type_level1 {
    type: string
    sql: ${TABLE}.productTypeLevel1 ;;
  }

  dimension: product_type_level2 {
    type: string
    sql: ${TABLE}.productTypeLevel2 ;;
  }

  dimension: product_type_level3 {
    type: string
    sql: ${TABLE}.productTypeLevel3 ;;
  }

  dimension: product_type_level4 {
    type: string
    sql: ${TABLE}.productTypeLevel4 ;;
  }

  dimension: product_type_level5 {
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
}
