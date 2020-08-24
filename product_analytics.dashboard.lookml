- dashboard: product_analytics
  title: Product Analytics
  layout: newspaper
  preferred_viewer: dashboards
  elements:
  - title: Total Spend
    name: Total Spend
    model: block_sa360
    explore: product_events
    type: single_value
    fields: [product_events.total_cost, product_conversion_events.period_selected]
    filters:
      product_conversion_events.period_selected: "-NULL"
    sorts: [product_conversion_events.period_selected desc]
    limit: 500
    dynamic_fields: [{table_calculation: prior_period, label: Prior Period, expression: "${product_events.total_cost}/offset(${product_events.total_cost},1)-1",
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
    defaults_version: 1
    listen:
      Device: product_conversion_events.device_segment
      Brand: product.product_brand
      Advertiser: advertiser.advertiser
      Engine: account.account_type
      Period: product_conversion_events.this_period_filter
      Prior Period Comparison: product_conversion_events.prior_period_filter
    row: 3
    col: 0
    width: 4
    height: 4
  - title: CPA
    name: CPA
    model: block_sa360
    explore: product_events
    type: single_value
    fields: [product_conversion_events.cost_per_acquisition, product_conversion_events.period_selected]
    filters:
      product_conversion_events.period_selected: "-NULL"
    sorts: [product_conversion_events.period_selected desc]
    limit: 500
    dynamic_fields: [{table_calculation: prior_period, label: Prior Period, expression: "${product_conversion_events.cost_per_acquisition}/offset(${product_conversion_events.cost_per_acquisition},1)-1",
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
    defaults_version: 1
    listen:
      Device: product_conversion_events.device_segment
      Brand: product.product_brand
      Advertiser: advertiser.advertiser
      Engine: account.account_type
      Period: product_conversion_events.this_period_filter
      Prior Period Comparison: product_conversion_events.prior_period_filter
    row: 7
    col: 0
    width: 4
    height: 4
  - title: Total Clicks
    name: Total Clicks
    model: block_sa360
    explore: product_events
    type: single_value
    fields: [product_events.total_clicks, product_conversion_events.period_selected]
    filters:
      product_conversion_events.period_selected: "-NULL"
    sorts: [product_conversion_events.period_selected desc]
    limit: 500
    dynamic_fields: [{table_calculation: prior_period, label: Prior Period, expression: "${product_events.total_clicks}/offset(${product_events.total_clicks},1)-1",
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
    defaults_version: 1
    listen:
      Device: product_conversion_events.device_segment
      Brand: product.product_brand
      Advertiser: advertiser.advertiser
      Engine: account.account_type
      Period: product_conversion_events.this_period_filter
      Prior Period Comparison: product_conversion_events.prior_period_filter
    row: 3
    col: 8
    width: 4
    height: 4
  - title: CTR
    name: CTR
    model: block_sa360
    explore: product_events
    type: single_value
    fields: [product_events.click_through_rate, product_conversion_events.period_selected]
    filters:
      product_conversion_events.period_selected: "-NULL"
    sorts: [product_conversion_events.period_selected desc]
    limit: 500
    dynamic_fields: [{table_calculation: prior_period, label: Prior Period, expression: "${product_events.click_through_rate}/offset(${product_events.click_through_rate},1)-1",
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
    defaults_version: 1
    listen:
      Device: product_conversion_events.device_segment
      Brand: product.product_brand
      Advertiser: advertiser.advertiser
      Engine: account.account_type
      Period: product_conversion_events.this_period_filter
      Prior Period Comparison: product_conversion_events.prior_period_filter
    row: 7
    col: 4
    width: 4
    height: 4
  - title: Total Revenue
    name: Total Revenue
    model: block_sa360
    explore: product_events
    type: single_value
    fields: [product_conversion_events.total_revenue, product_conversion_events.period_selected]
    filters:
      product_conversion_events.period_selected: "-NULL"
    sorts: [product_conversion_events.period_selected desc]
    limit: 500
    dynamic_fields: [{table_calculation: prior_period, label: Prior Period, expression: "${product_conversion_events.total_revenue}/offset(${product_conversion_events.total_revenue},1)-1",
        value_format: !!null '', value_format_name: percent_0, is_disabled: false,
        _kind_hint: measure, _type_hint: number}]
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
    defaults_version: 1
    listen:
      Device: product_conversion_events.device_segment
      Brand: product.product_brand
      Advertiser: advertiser.advertiser
      Engine: account.account_type
      Period: product_conversion_events.this_period_filter
      Prior Period Comparison: product_conversion_events.prior_period_filter
    row: 3
    col: 4
    width: 4
    height: 4
  - title: Highest Earning Products
    name: Highest Earning Products
    model: block_sa360
    explore: product_events
    type: looker_grid
    fields: [product.product_title, product.product_brand, product_conversion_events.total_revenue,
      product_conversion_events.ROAS, product_events.total_cost]
    sorts: [product_conversion_events.total_revenue desc]
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
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      product_conversion_events.total_revenue:
        is_active: false
      product_conversion_events.ROAS:
        is_active: false
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#4285F4",
        font_color: !!null '', color_application: {collection_id: google, custom: {
            id: 7d8b6bb1-8aed-bb41-b45c-2a865bd98aca, label: Custom, type: continuous,
            stops: [{color: "#B31412", offset: 0}, {color: "#EA4335", offset: 25},
              {color: "#ffffff", offset: 50}, {color: "#79f57f", offset: 75}, {color: "#05bd1b",
                offset: 100}]}, options: {steps: 5, constraints: {min: {type: minimum},
              mid: {type: number, value: 0}, max: {type: maximum}}, mirror: true,
            reverse: false, stepped: false}}, bold: false, italic: false, strikethrough: false,
        fields: [product_conversion_events.total_revenue]}]
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
    series_column_widths:
      product.product_title: 314
      product.product_brand: 127
    listen:
      Device: product_conversion_events.device_segment
      Brand: product.product_brand
      Advertiser: advertiser.advertiser
      Engine: account.account_type
      Period: product_conversion_events.this_period_filter
      Prior Period Comparison: product_conversion_events.prior_period_filter
    row: 14
    col: 9
    width: 15
    height: 6
  - title: Total Spend vs Total Revenue
    name: Total Spend vs Total Revenue
    model: block_sa360
    explore: product_events
    type: looker_line
    fields: [product_events.total_cost, product_conversion_events.total_revenue, product_conversion_events.days_from_period_start]
    filters: {}
    sorts: [product_events.total_cost desc]
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
    series_types: {}
    defaults_version: 1
    listen:
      Device: product_conversion_events.device_segment
      Brand: product.product_brand
      Advertiser: advertiser.advertiser
      Engine: account.account_type
      Period: product_conversion_events.this_period_filter
      Prior Period Comparison: product_conversion_events.prior_period_filter
    row: 14
    col: 0
    width: 9
    height: 6
  - title: Revenue by Product Country
    name: Revenue by Product Country
    model: block_sa360
    explore: product_events
    type: looker_geo_choropleth
    fields: [product.product_country, product_conversion_events.total_revenue]
    sorts: [product_conversion_events.total_revenue desc]
    limit: 500
    column_limit: 50
    map: auto
    map_projection: ''
    show_view_names: false
    quantize_colors: true
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: custom
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: true
    map_latitude: 45.519819502877084
    map_longitude: -145.05249023437503
    map_zoom: 2
    defaults_version: 1
    series_types: {}
    listen:
      Device: product_conversion_events.device_segment
      Brand: product.product_brand
      Advertiser: advertiser.advertiser
      Engine: account.account_type
      Period: product_conversion_events.this_period_filter
      Prior Period Comparison: product_conversion_events.prior_period_filter
    row: 20
    col: 0
    width: 12
    height: 7
  - title: ROAS
    name: ROAS
    model: block_sa360
    explore: product_events
    type: single_value
    fields: [product_conversion_events.ROAS, product_conversion_events.period_selected]
    filters:
      product_conversion_events.period_selected: "-NULL"
    sorts: [product_conversion_events.period_selected desc]
    limit: 500
    dynamic_fields: [{table_calculation: prior_period, label: Prior Period, expression: "${product_conversion_events.ROAS}/offset(${product_conversion_events.ROAS},1)-1",
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
    defaults_version: 1
    listen:
      Device: product_conversion_events.device_segment
      Brand: product.product_brand
      Advertiser: advertiser.advertiser
      Engine: account.account_type
      Period: product_conversion_events.this_period_filter
      Prior Period Comparison: product_conversion_events.prior_period_filter
    row: 7
    col: 8
    width: 4
    height: 4
  - title: Conversion Rate
    name: Conversion Rate
    model: block_sa360
    explore: product_events
    type: single_value
    fields: [product_conversion_events.conversion_rate, product_conversion_events.period_selected]
    filters:
      product_conversion_events.period_selected: "-NULL"
    sorts: [product_conversion_events.period_selected desc]
    limit: 500
    dynamic_fields: [{table_calculation: prior_period, label: Prior Period, expression: "${product_conversion_events.conversion_rate}/offset(${product_conversion_events.conversion_rate},1)-1",
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
      Device: product_conversion_events.device_segment
      Brand: product.product_brand
      Advertiser: advertiser.advertiser
      Engine: account.account_type
      Period: product_conversion_events.this_period_filter
      Prior Period Comparison: product_conversion_events.prior_period_filter
    row: 7
    col: 12
    width: 4
    height: 4
  - title: New Tile
    name: New Tile
    model: block_sa360
    explore: product_events
    type: looker_column
    fields: [product_events.total_impressions, product_events.total_clicks, product_conversion_events.total_conversions]
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_dropoff: true
    defaults_version: 1
    title_hidden: true
    listen:
      Device: product_conversion_events.device_segment
      Brand: product.product_brand
      Advertiser: advertiser.advertiser
      Engine: account.account_type
      Period: product_conversion_events.this_period_filter
      Prior Period Comparison: product_conversion_events.prior_period_filter
    row: 3
    col: 16
    width: 8
    height: 8
  - title: Total Conversions
    name: Total Conversions
    model: block_sa360
    explore: product_events
    type: single_value
    fields: [product_conversion_events.total_conversions, product_conversion_events.period_selected]
    filters:
      product_conversion_events.period_selected: "-NULL"
    sorts: [product_conversion_events.period_selected desc]
    limit: 500
    dynamic_fields: [{table_calculation: prior_period, label: Prior Period, expression: "${product_conversion_events.total_conversions}/offset(${product_conversion_events.total_conversions},1)-1",
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
      Device: product_conversion_events.device_segment
      Brand: product.product_brand
      Advertiser: advertiser.advertiser
      Engine: account.account_type
      Period: product_conversion_events.this_period_filter
      Prior Period Comparison: product_conversion_events.prior_period_filter
    row: 3
    col: 12
    width: 4
    height: 4
  - name: Product Performance
    type: text
    title_text: Product Performance
    subtitle_text: Review how your Products are performing overall.
    body_text: |-
      <center><strong>Recommended Action   </strong>
      Adjust the Period and Prior Period filters to compare how your product is performing for specific time frames. </center>
    row: 0
    col: 0
    width: 24
    height: 3
  - name: Revenue Performance
    type: text
    title_text: Revenue Performance
    subtitle_text: How well are your products earning revenue?
    body_text: |-
      <center><strong>Recommended Action </strong>
      Determine which products are earning the most revenue to ensure your spend is allocated for optimal ROAS.</center>
    row: 11
    col: 0
    width: 24
    height: 3
  - title: ROAS by Device
    name: ROAS by Device
    model: block_sa360
    explore: product_events
    type: looker_pie
    fields: [product_conversion_events.device_segment, product_conversion_events.ROAS]
    filters:
      product_conversion_events.device_segment: "-NULL"
    limit: 500
    query_timezone: America/Los_Angeles
    value_labels: legend
    label_type: labPer
    inner_radius: 45
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
    listen: {}
    row: 20
    col: 12
    width: 12
    height: 7
  - title: Profitability Overtime
    name: Profitability Overtime
    model: block_sa360
    explore: product_events
    type: looker_column
    fields: [product_events.total_cost, product_conversion_events.total_revenue, product_events._data_date]
    fill_fields: [product_events._data_date]
    filters:
      product_events._data_date: 14 days
    sorts: [product_events._data_date desc]
    limit: 500
    dynamic_fields: [{table_calculation: total_spend_search_clicks, label: Total Spend
          (Search Clicks), expression: "${product_events.total_cost} * -1", value_format: !!null '',
        value_format_name: usd_0, _kind_hint: measure, _type_hint: number}]
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
    series_colors:
      product_events.total_cost: "#4285F4"
      product_conversion_events.total_revenue: "#34A853"
    value_labels: legend
    label_type: labPer
    inner_radius: 45
    defaults_version: 1
    hidden_fields: [product_events.total_cost]
    listen: {}
    row: 27
    col: 0
    width: 24
    height: 6
  filters:
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
    explore: product_events
    listens_to_filters: []
    field: product_conversion_events.device_segment
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
    explore: product_events
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
    explore: product_events
    listens_to_filters: []
    field: account.account_type
  - name: Brand
    title: Brand
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: block_sa360
    explore: product_events
    listens_to_filters: []
    field: product.product_brand
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
    model: block_sa360
    explore: product_events
    listens_to_filters: []
    field: product_conversion_events.this_period_filter
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
    explore: product_events
    listens_to_filters: []
    field: product_conversion_events.prior_period_filter
