- dashboard: keyword_performance
  title: Keyword Performance
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Total Spend Card
    name: Total Spend Card
    model: block_sa360
    explore: keyword_events
    type: single_value
    fields: [keyword_conversion_events.period_selected, keyword_events.total_cost]
    filters:
      keyword_conversion_events.period_selected: "-NULL"
    sorts: [keyword_conversion_events.period_selected desc]
    limit: 500
    dynamic_fields: [{table_calculation: prior_period, label: Prior Period, expression: "${keyword_events.total_cost}/offset(${keyword_events.total_cost},1)-1",
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
    single_value_title: Total Spend
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
      Engine: account.account_type
      Device: keyword_events.device_segment
      Campaign: campaign.campaign
      Ad Group: ad_group.ad_group
      Period: keyword_conversion_events.this_period_filter
      Prior Period Comparison: keyword_conversion_events.prior_period_filter
      Keyword: keyword.keyword_text
    row: 3
    col: 0
    width: 4
    height: 4
  - title: CPA Card
    name: CPA Card
    model: block_sa360
    explore: keyword_events
    type: single_value
    fields: [keyword_conversion_events.cost_per_acquisition, keyword_conversion_events.period_selected]
    filters:
      keyword_conversion_events.period_selected: "-NULL"
    sorts: [keyword_conversion_events.period_selected desc]
    limit: 500
    dynamic_fields: [{table_calculation: prior_period, label: Prior Period, expression: "${keyword_conversion_events.cost_per_acquisition}/offset(${keyword_conversion_events.cost_per_acquisition},1)-1",
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
    single_value_title: CPA
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
      Engine: account.account_type
      Device: keyword_events.device_segment
      Campaign: campaign.campaign
      Ad Group: ad_group.ad_group
      Period: keyword_conversion_events.this_period_filter
      Prior Period Comparison: keyword_conversion_events.prior_period_filter
      Keyword: keyword.keyword_text
    row: 7
    col: 0
    width: 4
    height: 4
  - title: Total Clicks Card
    name: Total Clicks Card
    model: block_sa360
    explore: keyword_events
    type: single_value
    fields: [keyword_events.total_clicks, keyword_conversion_events.period_selected]
    filters:
      keyword_conversion_events.period_selected: "-NULL"
    sorts: [keyword_conversion_events.period_selected desc]
    limit: 500
    dynamic_fields: [{table_calculation: prior_period, label: Prior Period, expression: "${keyword_events.total_clicks}/offset(${keyword_events.total_clicks},1)-1",
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
    single_value_title: Total Clicks
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
      Engine: account.account_type
      Device: keyword_events.device_segment
      Campaign: campaign.campaign
      Ad Group: ad_group.ad_group
      Period: keyword_conversion_events.this_period_filter
      Prior Period Comparison: keyword_conversion_events.prior_period_filter
      Keyword: keyword.keyword_text
    row: 3
    col: 8
    width: 4
    height: 4
  - title: CTR Card
    name: CTR Card
    model: block_sa360
    explore: keyword_events
    type: single_value
    fields: [keyword_events.click_through_rate, keyword_conversion_events.period_selected]
    filters:
      keyword_conversion_events.period_selected: "-NULL"
    sorts: [keyword_conversion_events.period_selected desc]
    limit: 500
    dynamic_fields: [{table_calculation: prior_period, label: Prior Period, expression: "${keyword_events.click_through_rate}/offset(${keyword_events.click_through_rate},1)-1",
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
    single_value_title: CTR
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
      Engine: account.account_type
      Device: keyword_events.device_segment
      Campaign: campaign.campaign
      Ad Group: ad_group.ad_group
      Period: keyword_conversion_events.this_period_filter
      Prior Period Comparison: keyword_conversion_events.prior_period_filter
      Keyword: keyword.keyword_text
    row: 7
    col: 4
    width: 4
    height: 4
  - title: Total Conversions Card
    name: Total Conversions Card
    model: block_sa360
    explore: keyword_events
    type: single_value
    fields: [keyword_conversion_events.total_conversions, keyword_conversion_events.period_selected]
    filters:
      keyword_conversion_events.period_selected: "-NULL"
    sorts: [keyword_conversion_events.period_selected desc]
    limit: 500
    dynamic_fields: [{table_calculation: prior_period, label: Prior Period, expression: "${keyword_conversion_events.total_conversions}/offset(${keyword_conversion_events.total_conversions},1)-1",
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
    single_value_title: Total Conversions
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
      Engine: account.account_type
      Device: keyword_events.device_segment
      Campaign: campaign.campaign
      Ad Group: ad_group.ad_group
      Period: keyword_conversion_events.this_period_filter
      Prior Period Comparison: keyword_conversion_events.prior_period_filter
      Keyword: keyword.keyword_text
    row: 3
    col: 12
    width: 4
    height: 4
  - title: Total Revenue Card
    name: Total Revenue Card
    model: block_sa360
    explore: keyword_events
    type: single_value
    fields: [keyword_conversion_events.total_revenue, keyword_conversion_events.period_selected]
    filters:
      keyword_conversion_events.period_selected: "-NULL"
    sorts: [keyword_conversion_events.period_selected desc]
    limit: 500
    dynamic_fields: [{table_calculation: prior_period, label: Prior Period, expression: "${keyword_conversion_events.total_revenue}/offset(${keyword_conversion_events.total_revenue},1)-1",
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
    single_value_title: Total Revenue
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
      Engine: account.account_type
      Device: keyword_events.device_segment
      Campaign: campaign.campaign
      Ad Group: ad_group.ad_group
      Period: keyword_conversion_events.this_period_filter
      Prior Period Comparison: keyword_conversion_events.prior_period_filter
      Keyword: keyword.keyword_text
    row: 3
    col: 4
    width: 4
    height: 4
  - name: Keyword Performance
    type: text
    title_text: Keyword Performance
    subtitle_text: Review how your Keyword is performing overall.
    body_text: |-
      <center><strong>Recommended Action   </strong>
      Adjust the Period and Prior Period filters to compare how your keyword is performing for specific time frames. </center>
    row: 0
    col: 0
    width: 24
    height: 3
  - title: Profitability over Time
    name: Profitability over Time
    model: block_sa360
    explore: keyword_events
    type: looker_column
    fields: [keyword_conversion_events.total_revenue, keyword_events.total_cost, keyword_conversion_events._data_date]
    fill_fields: [keyword_conversion_events._data_date]
    sorts: [keyword_conversion_events._data_date desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: total_spend_search_clicks, label: Total Spend
          (Search Clicks), expression: "${keyword_events.total_cost} * -1", value_format: !!null '',
        value_format_name: usd_0, _kind_hint: measure, _type_hint: number}]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: keyword_conversion_events.total_revenue,
            id: keyword_conversion_events.total_revenue, name: Total Revenue}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: keyword_events.total_cost,
            id: keyword_events.total_cost, name: Total Spend (Search Clicks)}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    series_colors:
      keyword_conversion_events.total_revenue: "#34A853"
      keyword_events.total_cost: "#185ABC"
    show_null_points: true
    interpolation: monotone
    defaults_version: 1
    hidden_fields: [keyword_events.total_cost]
    listen:
      Engine: account.account_type
      Device: keyword_events.device_segment
      Campaign: campaign.campaign
      Ad Group: ad_group.ad_group
      Period: keyword_conversion_events.this_period_filter
      Prior Period Comparison: keyword_conversion_events.prior_period_filter
      Keyword: keyword.keyword_text
    row: 15
    col: 0
    width: 24
    height: 6
  - name: 'Performance Indicator '
    type: text
    title_text: 'Performance Indicator '
    subtitle_text: How has the keyword been performing based on the metric that matters
      most?
    body_text: |-
      <center><strong>Recommended Action   </strong>
      Choose the metric that matters most to your business using the Metric Selector Filter to determine how your keyword is performing, and adjust the Period and Prior Period Comparison filter to see how that metric has been trending. </center>
    row: 11
    col: 0
    width: 24
    height: 4
  - title: Performance by Day of Week
    name: Performance by Day of Week
    model: block_sa360
    explore: keyword_events
    type: looker_column
    fields: [keyword_events._data_day_of_week, keyword_events.metric, account.account_type]
    pivots: [account.account_type]
    fill_fields: [keyword_events._data_day_of_week]
    filters:
      keyword_events._data_date: NOT NULL
      account.account_type: "-NULL"
    sorts: [keyword_events._data_day_of_week, account.account_type]
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
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Period: keyword_conversion_events.this_period_filter
      Prior Period Comparison: keyword_conversion_events.prior_period_filter
      Keyword: keyword.keyword_text
      Metric Selector: keyword_events.metric_selector
    row: 21
    col: 12
    width: 12
    height: 11
  - title: ROAS
    name: ROAS
    model: block_sa360
    explore: keyword_events
    type: single_value
    fields: [keyword_conversion_events.ROAS, keyword_conversion_events.period_selected]
    filters:
      keyword_conversion_events.period_selected: "-NULL"
    sorts: [keyword_conversion_events.period_selected desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: prior_period, label: Prior Period, expression: "${keyword_conversion_events.ROAS}/offset(${keyword_conversion_events.ROAS},1)-1",
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
    single_value_title: ROAS
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
      Period: keyword_conversion_events.this_period_filter
      Prior Period Comparison: keyword_conversion_events.prior_period_filter
      Keyword: keyword.keyword_text
    row: 7
    col: 8
    width: 4
    height: 4
  - title: Conversion Rate
    name: Conversion Rate
    model: block_sa360
    explore: keyword_events
    type: single_value
    fields: [keyword_conversion_events.conversion_rate, keyword_conversion_events.period_selected]
    filters:
      keyword_conversion_events.period_selected: "-NULL"
    sorts: [keyword_conversion_events.period_selected desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: prior_period, label: Prior Period, expression: "${keyword_conversion_events.conversion_rate}/offset(${keyword_conversion_events.conversion_rate},1)-1",
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
    single_value_title: Conversion Rate
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
      Period: keyword_conversion_events.this_period_filter
      Prior Period Comparison: keyword_conversion_events.prior_period_filter
      Keyword: keyword.keyword_text
    row: 7
    col: 12
    width: 4
    height: 4
  - title: Funnel
    name: Funnel
    model: block_sa360
    explore: keyword_events
    type: looker_column
    fields: [keyword_events.total_impressions, keyword_events.total_clicks, keyword_conversion_events.total_conversions]
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
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    title_hidden: true
    listen:
      Period: keyword_conversion_events.this_period_filter
      Prior Period Comparison: keyword_conversion_events.prior_period_filter
      Keyword: keyword.keyword_text
    row: 3
    col: 16
    width: 8
    height: 8
  - title: Performance by Comparison Period
    name: Performance by Comparison Period
    model: block_sa360
    explore: keyword_events
    type: looker_line
    fields: [keyword_events.metric, keyword_conversion_events.period_selected, keyword_conversion_events.days_from_period_start]
    pivots: [keyword_conversion_events.period_selected]
    filters:
      keyword_events._data_date: 14 days
      keyword_conversion_events.this_period_filter: 7 days
      keyword_conversion_events.prior_period_filter: 7 days
      keyword_conversion_events.period_selected: "-NULL"
    sorts: [keyword_conversion_events.period_selected, keyword_events.metric desc
        0]
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
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: monotone
    series_types: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Metric Selector: keyword_events.metric_selector
    row: 21
    col: 0
    width: 12
    height: 11
  filters:
  - name: Engine
    title: Engine
    type: field_filter
    default_value: Bing Ads,Google AdWords,Other engines
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: block_sa360
    explore: keyword_events
    listens_to_filters: []
    field: account.account_type
  - name: Device
    title: Device
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: block_sa360
    explore: keyword_events
    listens_to_filters: []
    field: keyword_events.device_segment
  - name: Campaign
    title: Campaign
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: block_sa360
    explore: keyword_events
    listens_to_filters: []
    field: campaign.campaign
  - name: Ad Group
    title: Ad Group
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: block_sa360
    explore: keyword_events
    listens_to_filters: []
    field: ad_group.ad_group
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
    explore: keyword_events
    listens_to_filters: []
    field: keyword_events.metric_selector
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
    explore: keyword_events
    listens_to_filters: []
    field: keyword_conversion_events.this_period_filter
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
    explore: keyword_events
    listens_to_filters: []
    field: keyword_conversion_events.prior_period_filter
  - name: Keyword
    title: Keyword Text
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: block_sa360
    explore: keyword_events
    listens_to_filters: []
    field: keyword.keyword_text
