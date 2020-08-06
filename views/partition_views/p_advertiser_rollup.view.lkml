view: p_advertiser_rollup {
  derived_table: {
    sql: SELECT
        advertiser_rollup.advertiser  AS advertiser,
        advertiser_rollup.advertiserCurrencyCode  AS advertiser_currency_code,
        advertiser_rollup.advertiserId  AS advertiser_id,
        advertiser_rollup.agency  AS advertiser_agency,
        advertiser_rollup.agencyId  AS advertiser_agency_id,
        advertiser_rollup.dfaAdvertiserId  AS dfa_advertiser_id,
        advertiser_rollup.dfaNetworkId  AS dfa_network_id,
        advertiser_rollup.dfaNetworkTimeZone  AS dfa_network_time_zone,
        advertiser_rollup.status  AS status
      FROM `solution-guide-repository.SA360.p_Advertiser_21700000000010391`
           AS advertiser_rollup

      GROUP BY 1,2,3,4,5,6,7,8,9
      ORDER BY 1
 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: advertiser {
    type: string
    sql: ${TABLE}.advertiser ;;
  }

  dimension: advertiser_currency_code {
    type: string
    sql: ${TABLE}.advertiser_currency_code ;;
  }

  dimension: advertiser_id {
    type: string
    sql: ${TABLE}.advertiser_id ;;
  }

  dimension: advertiser_agency {
    type: string
    sql: ${TABLE}.advertiser_agency ;;
  }

  dimension: advertiser_agency_id {
    type: string
    sql: ${TABLE}.advertiser_agency_id ;;
  }

  dimension: dfa_advertiser_id {
    type: string
    sql: ${TABLE}.dfa_advertiser_id ;;
  }

  dimension: dfa_network_id {
    type: string
    sql: ${TABLE}.dfa_network_id ;;
  }

  dimension: dfa_network_time_zone {
    type: string
    sql: ${TABLE}.dfa_network_time_zone ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  set: detail {
    fields: [
      advertiser,
      advertiser_currency_code,
      advertiser_id,
      advertiser_agency,
      advertiser_agency_id,
      dfa_advertiser_id,
      dfa_network_id,
      dfa_network_time_zone,
      status
    ]
  }
}
