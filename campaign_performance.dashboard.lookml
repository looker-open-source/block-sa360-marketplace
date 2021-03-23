- dashboard: campaign_performance
  title: Campaign Performance
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Total Spend
    name: Total Spend
    model: block_sa360
    explore: ad_group_events
    type: single_value
    fields: [ad_group_events.total_cost, ad_group_conversion_events.period_selected]
    filters:
      ad_group_conversion_events.period_selected: "-NULL"
    sorts: [ad_group_conversion_events.period_selected desc]
    limit: 500
    dynamic_fields: [{table_calculation: prior_period, label: Prior Period, expression: "${ad_group_events.total_cost}/offset(${ad_group_events.total_cost},1)\
          \ - 1", value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
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
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    listen:
      Engine: account.account_type
      Device: ad_group_conversion_events.device_segment
      Advertiser: advertiser.advertiser
      Campaign: campaign.campaign
      'Period ': ad_group_conversion_events.this_period_filter
      Prior Period Comparison: ad_group_conversion_events.prior_period_filter
    row: 3
    col: 0
    width: 4
    height: 4
  - title: Total Revenue
    name: Total Revenue
    model: block_sa360
    explore: ad_group_events
    type: single_value
    fields: [ad_group_conversion_events.total_revenue, ad_group_conversion_events.period_selected]
    filters:
      ad_group_conversion_events.period_selected: "-NULL"
    sorts: [ad_group_conversion_events.period_selected desc]
    limit: 500
    dynamic_fields: [{table_calculation: prior_period, label: Prior Period, expression: "${ad_group_conversion_events.total_revenue}/offset(${ad_group_conversion_events.total_revenue},1)\
          \ - 1", value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
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
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    listen:
      Engine: account.account_type
      Device: ad_group_conversion_events.device_segment
      Advertiser: advertiser.advertiser
      Campaign: campaign.campaign
      'Period ': ad_group_conversion_events.this_period_filter
      Prior Period Comparison: ad_group_conversion_events.prior_period_filter
    row: 3
    col: 4
    width: 4
    height: 4
  - title: Total Clicks
    name: Total Clicks
    model: block_sa360
    explore: ad_group_events
    type: single_value
    fields: [ad_group_events.total_clicks, ad_group_conversion_events.period_selected]
    filters:
      ad_group_conversion_events.period_selected: "-NULL"
    sorts: [ad_group_conversion_events.period_selected desc]
    limit: 500
    dynamic_fields: [{table_calculation: prior_period, label: Prior Period, expression: "${ad_group_events.total_clicks}/offset(${ad_group_events.total_clicks},1)\
          \ - 1", value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
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
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    listen:
      Engine: account.account_type
      Device: ad_group_conversion_events.device_segment
      Advertiser: advertiser.advertiser
      Campaign: campaign.campaign
      'Period ': ad_group_conversion_events.this_period_filter
      Prior Period Comparison: ad_group_conversion_events.prior_period_filter
    row: 3
    col: 8
    width: 4
    height: 4
  - title: Total Conversions
    name: Total Conversions
    model: block_sa360
    explore: ad_group_events
    type: single_value
    fields: [ad_group_conversion_events.total_conversions, ad_group_conversion_events.period_selected]
    filters:
      ad_group_conversion_events.period_selected: "-NULL"
    sorts: [ad_group_conversion_events.period_selected desc]
    limit: 500
    dynamic_fields: [{table_calculation: prior_period, label: Prior Period, expression: "${ad_group_conversion_events.total_conversions}/offset(${ad_group_conversion_events.total_conversions},1)\
          \ - 1", value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
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
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    listen:
      Engine: account.account_type
      Device: ad_group_conversion_events.device_segment
      Advertiser: advertiser.advertiser
      Campaign: campaign.campaign
      'Period ': ad_group_conversion_events.this_period_filter
      Prior Period Comparison: ad_group_conversion_events.prior_period_filter
    row: 3
    col: 12
    width: 4
    height: 4
  - title: CPA
    name: CPA
    model: block_sa360
    explore: ad_group_events
    type: single_value
    fields: [ad_group_conversion_events.cost_per_acquisition, ad_group_conversion_events.period_selected]
    filters:
      ad_group_conversion_events.period_selected: "-NULL"
    sorts: [ad_group_conversion_events.period_selected desc]
    limit: 500
    dynamic_fields: [{table_calculation: prior_period, label: Prior Period, expression: "${ad_group_conversion_events.cost_per_acquisition}/offset(${ad_group_conversion_events.cost_per_acquisition},1)\
          \ - 1", value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
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
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    listen:
      Engine: account.account_type
      Device: ad_group_conversion_events.device_segment
      Advertiser: advertiser.advertiser
      Campaign: campaign.campaign
      'Period ': ad_group_conversion_events.this_period_filter
      Prior Period Comparison: ad_group_conversion_events.prior_period_filter
    row: 7
    col: 0
    width: 4
    height: 4
  - title: CTR
    name: CTR
    model: block_sa360
    explore: ad_group_events
    type: single_value
    fields: [ad_group_events.click_through_rate, ad_group_conversion_events.period_selected]
    filters:
      ad_group_conversion_events.period_selected: "-NULL"
    sorts: [ad_group_conversion_events.period_selected desc]
    limit: 500
    dynamic_fields: [{table_calculation: prior_period, label: Prior Period, expression: "${ad_group_events.click_through_rate}/offset(${ad_group_events.click_through_rate},1)\
          \ - 1", value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
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
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    listen:
      Engine: account.account_type
      Device: ad_group_conversion_events.device_segment
      Advertiser: advertiser.advertiser
      Campaign: campaign.campaign
      'Period ': ad_group_conversion_events.this_period_filter
      Prior Period Comparison: ad_group_conversion_events.prior_period_filter
    row: 7
    col: 4
    width: 4
    height: 4
  - title: ROAS
    name: ROAS
    model: block_sa360
    explore: ad_group_events
    type: single_value
    fields: [ad_group_conversion_events.roas, ad_group_conversion_events.period_selected]
    filters:
      ad_group_conversion_events.period_selected: "-NULL"
    sorts: [ad_group_conversion_events.period_selected desc]
    limit: 500
    dynamic_fields: [{table_calculation: prior_period, label: Prior Period, expression: "${ad_group_conversion_events.roas}/offset(${ad_group_conversion_events.roas},1)\
          \ - 1", value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
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
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    listen:
      Engine: account.account_type
      Device: ad_group_conversion_events.device_segment
      Advertiser: advertiser.advertiser
      Campaign: campaign.campaign
      'Period ': ad_group_conversion_events.this_period_filter
      Prior Period Comparison: ad_group_conversion_events.prior_period_filter
    row: 7
    col: 8
    width: 4
    height: 4
  - title: Conversion Rate
    name: Conversion Rate
    model: block_sa360
    explore: ad_group_events
    type: single_value
    fields: [ad_group_conversion_events.conversion_rate, ad_group_conversion_events.period_selected]
    filters:
      ad_group_conversion_events.period_selected: "-NULL"
    sorts: [ad_group_conversion_events.period_selected desc]
    limit: 500
    dynamic_fields: [{table_calculation: prior_period, label: Prior Period, expression: "${ad_group_conversion_events.conversion_rate}/offset(${ad_group_conversion_events.conversion_rate},1)\
          \ - 1", value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
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
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    listen:
      Engine: account.account_type
      Device: ad_group_conversion_events.device_segment
      Advertiser: advertiser.advertiser
      Campaign: campaign.campaign
      'Period ': ad_group_conversion_events.this_period_filter
      Prior Period Comparison: ad_group_conversion_events.prior_period_filter
    row: 7
    col: 12
    width: 4
    height: 4
  - title: Funnel
    name: Funnel
    model: block_sa360
    explore: ad_group_events
    type: looker_column
    fields: [ad_group_events.total_impressions, ad_group_events.total_clicks, ad_group_conversion_events.total_conversions]
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
    show_dropoff: true
    defaults_version: 1
    title_hidden: true
    listen:
      Engine: account.account_type
      Device: ad_group_conversion_events.device_segment
      Advertiser: advertiser.advertiser
      Campaign: campaign.campaign
      'Period ': ad_group_conversion_events.this_period_filter
      Prior Period Comparison: ad_group_conversion_events.prior_period_filter
    row: 3
    col: 16
    width: 8
    height: 8
  - title: 'Performance by Engine over Time '
    name: 'Performance by Engine over Time '
    model: block_sa360
    explore: ad_group_events
    type: looker_column
    fields: [account.account_type, ad_group_events.metric, ad_group_conversion_events.days_from_period_start]
    pivots: [account.account_type]
    filters:
      ad_group_conversion_events.days_from_period_start: NOT NULL
    sorts: [account.account_type 0, ad_group_conversion_events.days_from_period_start
        desc]
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
    stacking: normal
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
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Engine: account.account_type
      Device: ad_group_conversion_events.device_segment
      Advertiser: advertiser.advertiser
      Campaign: campaign.campaign
      'Period ': ad_group_conversion_events.this_period_filter
      Prior Period Comparison: ad_group_conversion_events.prior_period_filter
      Metric Selector: ad_group_events.metric_selector
    row: 34
    col: 0
    width: 12
    height: 8
  - title: Performance Period Comparison
    name: Performance Period Comparison
    model: block_sa360
    explore: ad_group_events
    type: looker_line
    fields: [ad_group_events.metric, ad_group_conversion_events.days_from_period_start,
      ad_group_conversion_events.period_selected]
    pivots: [ad_group_conversion_events.period_selected]
    filters:
      ad_group_conversion_events.period_selected: "-NULL"
    sorts: [ad_group_conversion_events.period_selected 0, ad_group_conversion_events.days_from_period_start
        desc]
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
    point_style: circle_outline
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: monotone
    defaults_version: 1
    listen:
      Engine: account.account_type
      Device: ad_group_conversion_events.device_segment
      Advertiser: advertiser.advertiser
      Campaign: campaign.campaign
      'Period ': ad_group_conversion_events.this_period_filter
      Prior Period Comparison: ad_group_conversion_events.prior_period_filter
      Metric Selector: ad_group_events.metric_selector
    row: 34
    col: 12
    width: 12
    height: 8
  - title: Performance by Time of Day
    name: Performance by Time of Day
    model: block_sa360
    explore: ad_group_events
    type: looker_grid
    fields: [ad_group_events.metric, ad_group_conversion_events._data_day_of_week,
      ad_group_conversion_events._data_hour_of_day]
    pivots: [ad_group_conversion_events._data_day_of_week]
    fill_fields: [ad_group_conversion_events._data_day_of_week, ad_group_conversion_events._data_hour_of_day]
    filters:
      ad_group_conversion_events._data_date: NOT NULL
    sorts: [ad_group_events.metric desc 0, ad_group_conversion_events._data_day_of_week]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      ad_group_events.metric:
        is_active: false
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#4285F4",
        font_color: !!null '', color_application: {collection_id: google, palette_id: google-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: [ad_group_events.metric]}]
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    defaults_version: 1
    series_types: {}
    listen:
      Engine: account.account_type
      Device: ad_group_conversion_events.device_segment
      Advertiser: advertiser.advertiser
      Campaign: campaign.campaign
      'Period ': ad_group_conversion_events.this_period_filter
      Metric Selector: ad_group_events.metric_selector
    row: 44
    col: 4
    width: 20
    height: 13
  - title: Performance by Season
    name: Performance by Season
    model: block_sa360
    explore: ad_group_events
    type: marketplace_viz_calendar_heatmap::calendar_heatmap-marketplace
    fields: [ad_group_events.metric, ad_group_conversion_events._data_date]
    fill_fields: [ad_group_conversion_events._data_date]
    filters:
      ad_group_conversion_events._data_date: NOT NULL
    sorts: [ad_group_conversion_events._data_date desc]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    color_picker: ["#7FCDAE", "#7ED09C", "#7DD389", "#85D67C", "#9AD97B", "#B1DB7A",
      "#CADF79", "#E2DF78", "#E5C877", "#E7AF75", "#EB9474", "#EE7772"]
    formatting_override: ''
    rounded: true
    outline: month
    label_year: 'true'
    label_month: 'false'
    show_legend: 'true'
    focus_tooltip: 'true'
    outline_weight: 1
    cell_color: "#fff"
    outline_color: "#000"
    cell_reducer: 1
    axis_label_color: "#282828"
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      ad_group_events.metric:
        is_active: false
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#4285F4",
        font_color: !!null '', color_application: {collection_id: google, palette_id: google-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    defaults_version: 0
    series_types: {}
    listen:
      Engine: account.account_type
      Device: ad_group_conversion_events.device_segment
      Advertiser: advertiser.advertiser
      Campaign: campaign.campaign
      Metric Selector: ad_group_events.metric_selector
    row: 57
    col: 4
    width: 20
    height: 7
  - name: Campaign Performance
    type: text
    title_text: Campaign Performance
    subtitle_text: Review how your Campaign is performing overall.
    body_text: |-
      <center><strong>Recommended Action   </strong>
      Adjust the Period and Prior Period filters to compare how your campaign is performing for specific time frames. </center>
    row: 0
    col: 0
    width: 24
    height: 3
  - name: Keyword Revenue Performance
    type: text
    title_text: Keyword Revenue Performance
    subtitle_text: How are individual Keywords in this campaign performing?
    body_text: |-
      <center><strong>Recommended Action   </strong>
      Determine if the keywords you are spending the most on are driving ROAS and Revenue. </center>
    row: 22
    col: 0
    width: 24
    height: 3
  - name: Performance by Time Interval
    type: text
    title_text: Performance by Time Interval
    subtitle_text: How does seasonality or the time of day affect your performance?
    body_text: ''
    row: 42
    col: 0
    width: 24
    height: 2
  - title: Top Keywords by Return on Ad Spend
    name: Top Keywords by Return on Ad Spend
    model: block_sa360
    explore: keyword_events
    type: looker_wordcloud
    fields: [keyword.keyword_text, keyword_conversion_events.ROAS]
    filters:
      keyword_conversion_events._data_date: 7 days
      keyword_events.device_segment: ''
      ad_group.ad_group: ''
      keyword.keyword_text: ''
    sorts: [keyword_conversion_events.ROAS desc]
    limit: 50
    column_limit: 50
    query_timezone: America/Los_Angeles
    color_application: undefined
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
    defaults_version: 1
    series_types: {}
    title_hidden: true
    listen:
      Engine: account.account_type
      Device: keyword_conversion_events.device_segment
      Advertiser: advertiser.advertiser
      Campaign: campaign.campaign
    row: 14
    col: 8
    width: 16
    height: 8
  - name: Campaign Details
    type: text
    title_text: Campaign Details
    subtitle_text: ''
    body_text: |-
      <center><strong>Recommended Action   </strong>
      Click on a specific keyword to link out to the Keyword Performance Dashboard. </center>
    row: 11
    col: 0
    width: 24
    height: 3
  - title: Weeks Since Start of Campaign
    name: Weeks Since Start of Campaign
    model: block_sa360
    explore: campaign_events
    type: single_value
    fields: [campaign.weeks_since_campaign_start]
    sorts: [campaign.weeks_since_campaign_start desc]
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    defaults_version: 1
    series_types: {}
    listen:
      Advertiser: advertiser.advertiser
      Campaign: campaign.campaign
    row: 14
    col: 0
    width: 8
    height: 4
  - title: Is active
    name: Is active
    model: block_sa360
    explore: campaign_events
    type: single_value
    fields: [campaign.is_active_now]
    fill_fields: [campaign.is_active_now]
    sorts: [campaign.is_active_now]
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Is Active?
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#4285F4",
        font_color: !!null '', color_application: {collection_id: google, palette_id: google-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
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
    defaults_version: 1
    series_types: {}
    listen:
      Advertiser: advertiser.advertiser
      Campaign: campaign.campaign
    row: 18
    col: 0
    width: 8
    height: 4
  - title: Keyword Spend vs Revenue
    name: Keyword Spend vs Revenue
    model: block_sa360
    explore: keyword_events
    type: looker_scatter
    fields: [keyword_conversion_events.total_revenue, keyword.keyword_id, keyword_events.total_cost]
    sorts: [keyword_conversion_events.total_revenue desc]
    limit: 500
    query_timezone: America/Los_Angeles
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
    show_null_points: true
    series_types: {}
    reference_lines: []
    defaults_version: 1
    hidden_fields: [keyword.keyword_id]
    listen: {}
    row: 25
    col: 12
    width: 12
    height: 6
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <center><strong>Recommended Action 👉</strong>
      Identify how your campaign is performing by time of day over the course of a week to determine if you can optimize further by Dayparting.</center>
    row: 44
    col: 0
    width: 4
    height: 13
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <center><strong>Recommended Action 👉</strong>
      Identify how your campaign performs over time with seasonality to optimize your planning strategy. </center>
    row: 57
    col: 0
    width: 4
    height: 9
  - title: Highest Spending Keywords
    name: Highest Spending Keywords
    model: block_sa360
    explore: keyword_events
    type: looker_grid
    fields: [keyword.keyword_text, keyword_conversion_events.total_revenue, keyword_events.total_cost,
      keyword_conversion_events.ROAS]
    filters:
      keyword.keyword_text: "-NULL"
    sorts: [keyword_events.total_cost desc]
    limit: 500
    query_timezone: America/Los_Angeles
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
    column_order: ["$$$_row_numbers_$$$", keyword.keyword_text, keyword_events.total_cost,
      keyword_conversion_events.total_revenue, keyword_conversion_events.ROAS]
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      keyword_conversion_events.total_revenue:
        is_active: false
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#4285F4",
        font_color: !!null '', color_application: {collection_id: google, custom: {
            id: af1f5ec5-32a1-2ec5-e702-f0f555dde900, label: Custom, type: continuous,
            stops: [{color: "#B31412", offset: 0}, {color: "#EA4335", offset: 25},
              {color: "#ffffff", offset: 50}, {color: "#69db6a", offset: 75}, {color: "#05ad06",
                offset: 100}]}, options: {steps: 5, constraints: {min: {type: minimum},
              mid: {type: number, value: 0}, max: {type: maximum}}, mirror: true,
            reverse: false, stepped: false}}, bold: false, italic: false, strikethrough: false,
        fields: [keyword_events.total_cost]}, {type: less than, value: 0, background_color: '',
        font_color: "#EA4335", color_application: {collection_id: google, palette_id: google-diverging-0,
          options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [keyword_conversion_events.ROAS]}]
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 25
    col: 0
    width: 12
    height: 6
  - name: 'Performance Indicator '
    type: text
    title_text: 'Performance Indicator '
    subtitle_text: How has your campaign been performing based on the metric that
      matters most?
    body_text: |-
      <center><strong>Recommended Action   </strong>
      Choose the metric that matters most to your business using the Metric Selector Filter to determine how your campaign is performing by engine, and adjust the Period and Prior Period Comparison filter to see how that metric has been trending. </center>
    row: 31
    col: 0
    width: 24
    height: 3
  filters:
  - name: Metric Selector
    title: Metric Selector
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_toggles
      display: inline
    model: block_sa360
    explore: ad_group_events
    listens_to_filters: []
    field: ad_group_events.metric_selector
  - name: Advertiser
    title: Advertiser
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: block_sa360
    explore: ad_group_events
    listens_to_filters: []
    field: advertiser.advertiser
  - name: Engine
    title: Engine
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: block_sa360
    explore: ad_group_events
    listens_to_filters: []
    field: account.account_type
  - name: Campaign
    title: Campaign
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: block_sa360
    explore: ad_group_events
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
    model: block_sa360
    explore: ad_group_events
    listens_to_filters: []
    field: ad_group_conversion_events.device_segment
  - name: 'Period '
    title: 'Period '
    type: field_filter
    default_value: this week
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: popover
      options: []
    model: block_sa360
    explore: ad_group_events
    listens_to_filters: []
    field: ad_group_conversion_events.this_period_filter
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
    model: block_sa360
    explore: ad_group_events
    listens_to_filters: []
    field: ad_group_conversion_events.prior_period_filter
