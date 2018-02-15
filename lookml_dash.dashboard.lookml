- dashboard: bar_chart_2
  title: Bar Chart 2
  layout: newspaper
  elements:
  - title: Untitled
    name: Untitled
    model: the_look
    explore: orders
    type: looker_bar
    fields:
    - orders.count
    - users.age
    sorts:
    - orders.count desc
    limit: 500
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: positron
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
    reverse_map_value_colors: false
    show_null_points: true
    point_style: none
    interpolation: linear
    series_types: {}
    map_latitude: 44.715513732021336
    map_longitude: -99.66796875000001
    map_zoom: 2
    listen:
      State: users.state
    row: 3
    col: 0
    width: 24
    height: 8
  - name: Nav
    title: Nav
    model: the_look
    explore: users
    type: single_value
    fields:
    - users.nav
    sorts:
    - users.nav
    limit: 500
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    listen:
      State: users.state
    row: 0
    col: 0
    width: 24
    height: 3
  filters:
  - name: State
    title: State
    type: field_filter
    default_value: ''
    model: the_look
    explore: orders
    field: users.state
    listens_to_filters: []
    allow_multiple_values: true
    required: false
