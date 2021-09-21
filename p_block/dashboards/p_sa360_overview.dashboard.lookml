- dashboard: p_sa360_overview
  title: Partitioned SA360 Overview
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: CTR
    name: CTR
    model: p_block_sa360_v2
    explore: p_campaign_events
    type: single_value
    fields: [p_campaign_events.click_through_rate, p_campaign_conversion_events.period_selected]
    filters:
    p_campaign_conversion_events.period_selected: "-NULL"
    sorts: [p_campaign_conversion_events.period_selected desc]
    limit: 500
    dynamic_fields: [{table_calculation: prior_period, label: Prior Period, expression: "${p_campaign_events.click_through_rate}/offset(${p_campaign_events.click_through_rate},1)-1",
      value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
      _type_hint: number}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen:
    Engine: p_account_rollup.account_type
    Device: p_campaign_conversion_events.device_segment
    Campaign: p_campaign_rollup.campaign
    Advertiser: p_advertiser_rollup.advertiser
    Period: p_campaign_conversion_events.this_period_filter
    Prior Period Comparison: p_campaign_conversion_events.prior_period_filter
    row: 7
    col: 4
    width: 4
    height: 4
  - title: Total Spend
    name: Total Spend
    model: p_block_sa360_v2
    explore: p_campaign_events
    type: single_value
    fields: [p_campaign_events.total_cost, p_campaign_conversion_events.period_selected]
    filters:
    p_campaign_conversion_events.period_selected: "-NULL"
    sorts: [p_campaign_conversion_events.period_selected desc]
    limit: 500
    dynamic_fields: [{table_calculation: prior_period, label: Prior Period, expression: "${p_campaign_events.total_cost}/offset(${p_campaign_events.total_cost},1)-1",
      value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
      _type_hint: number}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen:
    Engine: p_account_rollup.account_type
    Device: p_campaign_conversion_events.device_segment
    Campaign: p_campaign_rollup.campaign
    Advertiser: p_advertiser_rollup.advertiser
    Period: p_campaign_conversion_events.this_period_filter
    Prior Period Comparison: p_campaign_conversion_events.prior_period_filter
    row: 3
    col: 0
    width: 4
