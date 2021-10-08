- dashboard: sa360_overview
  title: SA360 Overview
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: CTR
    name: CTR
    model: block_sa360_v2
    explore: campaign_events
    type: single_value
    fields: [campaign_events.click_through_rate, campaign_conversion_events.period_selected]
    filters:
      campaign_conversion_events.period_selected: "-NULL"
    sorts: [campaign_conversion_events.period_selected desc]
    limit: 500
    dynamic_fields: [{table_calculation: prior_period, label: Prior Period, expression: "${campaign_events.click_through_rate}/offset(${campaign_events.click_through_rate},1)-1",
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
      Engine: account.account_type
      Device: campaign_conversion_events.device_segment
      Campaign: campaign.campaign
      Advertiser: advertiser.advertiser
      Period: campaign_conversion_events.this_period_filter
      Prior Period Comparison: campaign_conversion_events.prior_period_filter
    row: 7
    col: 4
    width: 4
    height: 4
  - title: Total Spend
    name: Total Spend
    model: block_sa360_v2
    explore: campaign_events
    type: single_value
    fields: [campaign_events.total_cost, campaign_conversion_events.period_selected]
    filters:
      campaign_conversion_events.period_selected: "-NULL"
    sorts: [campaign_conversion_events.period_selected desc]
    limit: 500
    dynamic_fields: [{table_calculation: prior_period, label: Prior Period, expression: "${campaign_events.total_cost}/offset(${campaign_events.total_cost},1)-1",
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
      Engine: account.account_type
      Device: campaign_conversion_events.device_segment
      Campaign: campaign.campaign
      Advertiser: advertiser.advertiser
      Period: campaign_conversion_events.this_period_filter
      Prior Period Comparison: campaign_conversion_events.prior_period_filter
    row: 3
    col: 0
    width: 4
    height: 4
  - title: Total Revenue
    name: Total Revenue
    model: block_sa360_v2
    explore: campaign_events
    type: single_value
    fields: [campaign_conversion_events.total_revenue, campaign_conversion_events.period_selected]
    filters:
      campaign_conversion_events.period_selected: "-NULL"
    sorts: [campaign_conversion_events.period_selected desc]
    limit: 500
    dynamic_fields: [{table_calculation: prior_period, label: Prior Period, expression: "${campaign_conversion_events.total_revenue}/offset(${campaign_conversion_events.total_revenue},1)-1",
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
      Engine: account.account_type
      Device: campaign_conversion_events.device_segment
      Campaign: campaign.campaign
      Advertiser: advertiser.advertiser
      Period: campaign_conversion_events.this_period_filter
      Prior Period Comparison: campaign_conversion_events.prior_period_filter
    row: 3
    col: 4
    width: 4
    height: 4
  - title: Total Clicks
    name: Total Clicks
    model: block_sa360_v2
    explore: campaign_events
    type: single_value
    fields: [campaign_events.total_clicks, campaign_conversion_events.period_selected]
    filters:
      campaign_conversion_events.period_selected: "-NULL"
    sorts: [campaign_conversion_events.period_selected desc]
    limit: 500
    dynamic_fields: [{table_calculation: prior_period, label: Prior Period, expression: "${campaign_events.total_clicks}/offset(${campaign_events.total_clicks},1)-1",
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
      Engine: account.account_type
      Device: campaign_conversion_events.device_segment
      Campaign: campaign.campaign
      Advertiser: advertiser.advertiser
      Period: campaign_conversion_events.this_period_filter
      Prior Period Comparison: campaign_conversion_events.prior_period_filter
    row: 3
    col: 8
    width: 4
    height: 4
  - title: Total Conversions
    name: Total Conversions
    model: block_sa360_v2
    explore: campaign_events
    type: single_value
    fields: [campaign_conversion_events.total_conversions, campaign_conversion_events.period_selected]
    filters:
      campaign_conversion_events.period_selected: "-NULL"
    sorts: [campaign_conversion_events.period_selected desc]
    limit: 500
    dynamic_fields: [{table_calculation: prior_period, label: Prior Period, expression: "${campaign_conversion_events.total_conversions}/offset(${campaign_conversion_events.total_conversions},1)-1",
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
      Engine: account.account_type
      Device: campaign_conversion_events.device_segment
      Campaign: campaign.campaign
      Advertiser: advertiser.advertiser
      Period: campaign_conversion_events.this_period_filter
      Prior Period Comparison: campaign_conversion_events.prior_period_filter
    row: 3
    col: 12
    width: 4
    height: 4
  - title: CPA
    name: CPA
    model: block_sa360_v2
    explore: campaign_events
    type: single_value
    fields: [campaign_conversion_events.cost_per_acquisition, campaign_conversion_events.period_selected]
    filters:
      campaign_conversion_events.period_selected: "-NULL"
    sorts: [campaign_conversion_events.period_selected desc]
    limit: 500
    dynamic_fields: [{table_calculation: prior_period, label: Prior Period, expression: "${campaign_conversion_events.cost_per_acquisition}/offset(${campaign_conversion_events.cost_per_acquisition},1)-1",
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
      Engine: account.account_type
      Device: campaign_conversion_events.device_segment
      Campaign: campaign.campaign
      Advertiser: advertiser.advertiser
      Period: campaign_conversion_events.this_period_filter
      Prior Period Comparison: campaign_conversion_events.prior_period_filter
    row: 7
    col: 0
    width: 4
    height: 4
  - title: ROAS
    name: ROAS
    model: block_sa360_v2
    explore: campaign_events
    type: single_value
    fields: [campaign_conversion_events.ROAS, campaign_conversion_events.period_selected]
    filters:
      campaign_conversion_events.period_selected: "-NULL"
    sorts: [campaign_conversion_events.period_selected desc]
    limit: 500
    dynamic_fields: [{table_calculation: prior_period, label: Prior Period, expression: "${campaign_conversion_events.ROAS}/offset(${campaign_conversion_events.ROAS},1)-1",
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
      Engine: account.account_type
      Device: campaign_conversion_events.device_segment
      Campaign: campaign.campaign
      Advertiser: advertiser.advertiser
      Period: campaign_conversion_events.this_period_filter
      Prior Period Comparison: campaign_conversion_events.prior_period_filter
    row: 7
    col: 8
    width: 4
    height: 4
  - title: Conversion Rate
    name: Conversion Rate
    model: block_sa360_v2
    explore: campaign_events
    type: single_value
    fields: [campaign_conversion_events.conversion_rate, campaign_conversion_events.period_selected]
    filters:
      campaign_conversion_events.period_selected: "-NULL"
    sorts: [campaign_conversion_events.period_selected desc]
    limit: 500
    dynamic_fields: [{table_calculation: prior_period, label: Prior Period, expression: "${campaign_conversion_events.conversion_rate}/offset(${campaign_conversion_events.conversion_rate},1)-1",
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
      Engine: account.account_type
      Device: campaign_conversion_events.device_segment
      Campaign: campaign.campaign
      Advertiser: advertiser.advertiser
      Period: campaign_conversion_events.this_period_filter
      Prior Period Comparison: campaign_conversion_events.prior_period_filter
    row: 7
    col: 12
    width: 4
    height: 4
  - title: Funnel
    name: Funnel
    model: block_sa360_v2
    explore: campaign_events
    type: looker_column
    fields: [campaign_events.total_impressions, campaign_events.total_clicks, campaign_conversion_events.total_conversions]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    show_dropoff: true
    defaults_version: 1
    title_hidden: true
    listen:
      Engine: account.account_type
      Device: campaign_conversion_events.device_segment
      Campaign: campaign.campaign
      Advertiser: advertiser.advertiser
      Period: campaign_conversion_events.this_period_filter
      Prior Period Comparison: campaign_conversion_events.prior_period_filter
    row: 3
    col: 16
    width: 8
    height: 8
  - title: Revenue by Engine
    name: Revenue by Engine
    model: block_sa360_v2
    explore: campaign_events
    type: looker_column
    fields: [account.account_type, campaign_conversion_events.total_revenue]
    pivots: [account.account_type]
    filters: {}
    sorts: [account.account_type]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Engine: account.account_type
      Device: campaign_conversion_events.device_segment
      Campaign: campaign.campaign
      Advertiser: advertiser.advertiser
      Period: campaign_conversion_events.this_period_filter
      Prior Period Comparison: campaign_conversion_events.prior_period_filter
    row: 14
    col: 0
    width: 8
    height: 6
  - title: CPA and ROAS by Engine
    name: CPA and ROAS by Engine
    model: block_sa360_v2
    explore: campaign_events
    type: looker_column
    fields: [account.account_type, campaign_conversion_events.ROAS, campaign_conversion_events.cost_per_acquisition]
    filters: {}
    sorts: [account.account_type]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: campaign_conversion_events.ROAS,
            id: campaign_conversion_events.ROAS, name: Roas}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear},
      {label: !!null '', orientation: right, series: [{axisId: campaign_conversion_events.cost_per_acquisition,
            id: campaign_conversion_events.cost_per_acquisition, name: Cost per Acquisition
              (CPA)}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    font_size: '12'
    series_types:
      campaign_conversion_events.cost_per_acquisition: line
    series_colors:
      campaign_conversion_events.total_revenue: "#34A853"
      campaign_events.total_cost: "#FBBC04"
      campaign_conversion_events.ROAS: "#4285F4"
      campaign_conversion_events.cost_per_acquisition: "#FBBC04"
    defaults_version: 1
    listen:
      Engine: account.account_type
      Device: campaign_conversion_events.device_segment
      Campaign: campaign.campaign
      Advertiser: advertiser.advertiser
      Period: campaign_conversion_events.this_period_filter
      Prior Period Comparison: campaign_conversion_events.prior_period_filter
    row: 14
    col: 8
    width: 16
    height: 6
  - title: Total Clicks
    name: Total Clicks (2)
    model: block_sa360_v2
    explore: campaign_events
    type: looker_pie
    fields: [account.account_type, campaign_events.total_clicks]
    filters: {}
    sorts: [account.account_type]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
        reverse: false
    series_colors:
      campaign_conversion_events.total_revenue: "#34A853"
      campaign_events.total_cost: "#FBBC04"
      Google AdWords: "#4285F4"
      Bing Ads: "#34A853"
    show_value_labels: true
    font_size: 12
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Engine: account.account_type
      Device: campaign_conversion_events.device_segment
      Campaign: campaign.campaign
      Advertiser: advertiser.advertiser
      Period: campaign_conversion_events.this_period_filter
      Prior Period Comparison: campaign_conversion_events.prior_period_filter
    row: 20
    col: 0
    width: 8
    height: 6
  - title: ROAS by Engine
    name: ROAS by Engine
    model: block_sa360_v2
    explore: campaign_events
    type: looker_line
    fields: [account.account_type, campaign_conversion_events.ROAS, campaign_events._data_date]
    pivots: [account.account_type]
    fill_fields: [campaign_events._data_date]
    filters:
      campaign_events._data_date: 14 days
    sorts: [account.account_type, campaign_events._data_date desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: monotone
    font_size: '12'
    series_types: {}
    series_colors:
      campaign_conversion_events.total_revenue: "#34A853"
      campaign_events.total_cost: "#FBBC04"
      Google AdWords: "#EA8600"
      Google AdWords - campaign_conversion_events.ROAS: "#EA4335"
    value_labels: legend
    label_type: labPer
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Engine: account.account_type
      Device: campaign_conversion_events.device_segment
      Campaign: campaign.campaign
      Advertiser: advertiser.advertiser
      Period: campaign_conversion_events.this_period_filter
      Prior Period Comparison: campaign_conversion_events.prior_period_filter
    row: 20
    col: 8
    width: 16
    height: 6
  - name: 'SA 360 Overview '
    type: text
    title_text: 'SA 360 Overview '
    subtitle_text: How are our campaigns performing?
    body_text: |-
      <center><strong>Recommended Action   </strong>
      Adjust the Period and Prior Period filters to compare how your campaigns are performing for specific time frames. </center>
    row: 0
    col: 0
    width: 24
    height: 3
  - name: Breakdown by Engine
    type: text
    title_text: Breakdown by Engine
    subtitle_text: 'Analyze performance based on Engine: Google AdWords, Bing Ads,
      Yahoo Japan Listing Ads, Yahoo Search Marketing, Yahoo Gemini, Baidu, or Comparison
      Shopping.'
    body_text: |-
      <center><strong>Recommended Action </strong>
      Identify how your campaigns perform by engine to optimize bid strategy and budget allocation across platforms. </center>
    row: 11
    col: 0
    width: 24
    height: 3
  - name: Revenue Performance
    type: text
    title_text: Revenue Performance
    subtitle_text: ''
    body_text: |-
      <center><strong>Recommended Action </strong>
      Determine if your highest spending campaigns are also providing the highest revenue to ensure your spend is allocated for optimal ROAS.</center>
    row: 26
    col: 0
    width: 24
    height: 3
  - title: Total Spend vs ROAS
    name: Total Spend vs ROAS
    model: block_sa360_v2
    explore: campaign_events
    type: looker_area
    fields: [campaign_events.total_cost, campaign_conversion_events.ROAS, campaign_events._data_date]
    fill_fields: [campaign_events._data_date]
    filters:
      campaign_events._data_date: 14 days
    sorts: [campaign_events._data_date desc]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: monotone
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: campaign_events.total_cost,
            id: campaign_events.total_cost, name: Total Spend (Search Clicks)}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: campaign_conversion_events.ROAS,
            id: campaign_conversion_events.ROAS, name: Percent ROAS}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    series_colors:
      campaign_events.total_cost: "#FBBC04"
      campaign_conversion_events.ROAS: "#34A853"
    defaults_version: 1
    listen:
      Engine: account.account_type
      Device: campaign_conversion_events.device_segment
      Campaign: campaign.campaign
      Advertiser: advertiser.advertiser
      Period: campaign_conversion_events.this_period_filter
      Prior Period Comparison: campaign_conversion_events.prior_period_filter
    row: 29
    col: 0
    width: 11
    height: 10
  - title: Highest Spending Campaigns
    name: Highest Spending Campaigns
    model: block_sa360_v2
    explore: campaign_events
    type: looker_grid
    fields: [campaign.campaign
           , campaign_conversion_events.ROAS
           , campaign_conversion_events.total_revenue
           , campaign_events.total_cost
          # , campaign.sa360_link
           ]
    filters: {}
    sorts: [campaign_conversion_events.total_revenue desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: true
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", campaign.campaign, campaign_events.total_cost,
      campaign_conversion_events.ROAS, campaign_conversion_events.total_revenue]
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      campaign_conversion_events.ROAS:
        is_active: false
        value_display: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '20'
    conditional_formatting: [{type: greater than, value: 0, background_color: '',
        font_color: "#5F6368", color_application: {collection_id: google, palette_id: google-diverging-0,
          options: {steps: 5, constraints: {min: {type: minimum}, mid: {type: number,
                value: 0}, max: {type: maximum}}, mirror: false, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [campaign_conversion_events.ROAS]},
      {type: less than, value: 0, background_color: '', font_color: "#B31412", color_application: {
          collection_id: google, palette_id: google-diverging-0, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [campaign_conversion_events.ROAS]}, {type: along
          a scale..., value: !!null '', background_color: "#4285F4", font_color: !!null '',
        color_application: {collection_id: google, custom: {id: 9c5cc1ef-1eb0-7c9c-3628-8f69e1acb792,
            label: Custom, type: continuous, stops: [{color: "#B31412", offset: 0},
              {color: "#EA4335", offset: 25}, {color: "#ffffff", offset: 50}, {color: "#7ef587",
                offset: 75}, {color: "#0cbd0a", offset: 100}]}, options: {steps: 5,
            constraints: {min: {type: minimum}, mid: {type: number, value: 0}, max: {
                type: maximum}}, mirror: true, reverse: false, stepped: false}}, bold: false,
        italic: false, strikethrough: false, fields: [campaign_events.total_cost]}]
    series_types: {}
    defaults_version: 1
    series_column_widths:
      campaign_conversion_events.total_revenue: 259
    listen:
      Engine: account.account_type
      Device: campaign_conversion_events.device_segment
      Campaign: campaign.campaign
      Advertiser: advertiser.advertiser
      Period: campaign_conversion_events.this_period_filter
      Prior Period Comparison: campaign_conversion_events.prior_period_filter
    row: 29
    col: 11
    width: 13
    height: 10
  filters:
  - name: Campaign
    title: Campaign
    type: field_filter
    default_value: "-NULL"
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: block_sa360_v2
    explore: campaign_events
    listens_to_filters: []
    field: campaign.campaign
  - name: Device
    title: Device
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: block_sa360_v2
    explore: campaign_events
    listens_to_filters: []
    field: campaign_conversion_events.device_segment
  - name: Engine
    title: Engine
    type: field_filter
    default_value: Bing Ads,Other engines,Google AdWords
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: block_sa360_v2
    explore: campaign_events
    listens_to_filters: []
    field: account.account_type
  - name: Advertiser
    title: Advertiser
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: block_sa360_v2
    explore: campaign_events
    listens_to_filters: []
    field: advertiser.advertiser
  - name: Period
    title: Period
    type: field_filter
    default_value: this week
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: popover
      options: []
    model: block_sa360_v2
    explore: campaign_events
    listens_to_filters: []
    field: campaign_conversion_events.this_period_filter
  - name: Prior Period Comparison
    title: Prior Period Comparison
    type: field_filter
    default_value: last week
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: popover
      options: []
    model: block_sa360_v2
    explore: campaign_events
    listens_to_filters: []
    field: campaign_conversion_events.prior_period_filter
