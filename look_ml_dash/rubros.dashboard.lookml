- dashboard: rubros
  title: Rubros
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  preferred_slug: atDCAlHGjIxeAFnJ4u28AB
  elements:
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <div style="border-bottom: solid 1px #4285F4;">

      <nav style="font-size: 18px; padding: 5px 10px 0 10px; height: 60px">

      <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="56" > Inicio</a>
      <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="58" > PYG</a>
      <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="59" > Año</a>
      <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="60" > Marca</a>
      <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="61" > Tiendas</a>
      <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="57" > Top</a>
      <a style="padding: 5px 15px; border-top: solid 1px #4285F4; border-left: solid 1px #4285F4; border-right: solid 1px #4285F4; border-radius: 5px 5px 0 0; float: left; line-height: 40px; font-weight: bold; background-color: #eaf1fe;" href="#"> Rubros</a>

      </nav>

      </div>
    row: 0
    col: 0
    width: 24
    height: 2
  - title: Participación de ingresos por cuenta
    name: Participación de ingresos por cuenta
    model: tac_project
    explore: demo_tac
    type: looker_pie
    fields: [demo_tac.cuenta_descripcion, demo_tac.Total_ingresos]
    sorts: [demo_tac.cuenta_descripcion]
    limit: 500
    column_limit: 50
    value_labels: labels
    label_type: labPer
    inner_radius: 65
    color_application:
      collection_id: legacy
      palette_id: looker_classic
      options:
        steps: 5
        reverse: false
    series_colors:
      Servicios: "#90c8ae"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Filtro Fecha: demo_tac.date_filter
      País: demo_tac.pais
      Tienda: demo_tac.tienda
      Marca: demo_tac.cadena
      Sociedades: demo_tac.tipo_de_sociedad
      Agrupación: demo_tac.agrupacion
      Subagrupacion: demo_tac.subagrupacion
      Moneda: demo_tac.moneda
    row: 2
    col: 12
    width: 12
    height: 6
  - title: Evolutivo anual
    name: Evolutivo anual
    model: tac_project
    explore: demo_tac
    type: looker_line
    fields: [demo_tac.Valor_moneda, demo_tac.Valor_presupuesto, demo_tac.fecha_month_name]
    fill_fields: [demo_tac.fecha_month_name]
    sorts: [demo_tac.fecha_month_name]
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: legacy
      palette_id: mixed_dark
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: demo_tac.Valor_moneda,
            id: demo_tac.Valor_moneda, name: Valor Moneda}, {axisId: demo_tac.Valor_presupuesto,
            id: demo_tac.Valor_presupuesto, name: Valor Presupuesto}], showLabels: true,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      demo_tac.Valor_moneda: "#fdbf6f"
      demo_tac.Valor_presupuesto: "#a6cee3"
    label_color: ["#"]
    groupBars: true
    labelSize: 10pt
    showLegend: true
    defaults_version: 1
    listen:
      Filtro Fecha: demo_tac.date_filter
      País: demo_tac.pais
      Tienda: demo_tac.tienda
      Marca: demo_tac.cadena
      Sociedades: demo_tac.tipo_de_sociedad
      Agrupación: demo_tac.agrupacion
      Subagrupacion: demo_tac.subagrupacion
      Moneda: demo_tac.moneda
    row: 8
    col: 0
    width: 12
    height: 5
  - title: Comparativo por rubros
    name: Comparativo por rubros
    model: tac_project
    explore: demo_tac
    type: looker_grid
    fields: [demo_tac.cuenta_descripcion, demo_tac.Valor_moneda, demo_tac.Total_ingresos,
      demo_tac.Valor_presupuesto]
    sorts: [demo_tac.Valor_moneda desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${demo_tac.Total_ingresos}/${demo_tac.Valor_moneda}"
      label: "% Part Ingreso"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: part_ingreso
      _type_hint: number
    - category: table_calculation
      expression: "${demo_tac.Valor_moneda}/${demo_tac.Valor_presupuesto}"
      label: Valor % Part Ppto
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: valor_part_ppto
      _type_hint: number
    - category: table_calculation
      expression: "${demo_tac.Valor_presupuesto}/${demo_tac.Valor_moneda}"
      label: "% Cump Partida"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: cump_partida
      _type_hint: number
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Filtro Fecha: demo_tac.date_filter
      País: demo_tac.pais
      Tienda: demo_tac.tienda
      Marca: demo_tac.cadena
      Sociedades: demo_tac.tipo_de_sociedad
      Agrupación: demo_tac.agrupacion
      Subagrupacion: demo_tac.subagrupacion
      Moneda: demo_tac.moneda
    row: 2
    col: 0
    width: 12
    height: 6
  - title: Untitled
    name: Untitled
    model: tac_project
    explore: demo_tac
    type: marketplace_viz_sankey::sankey-marketplace
    fields: [demo_tac.pais, demo_tac.agrupacion, demo_tac.cuenta_descripcion, demo_tac.Total_ingresos]
    sorts: [demo_tac.Total_ingresos desc]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    label_type: name
    show_null_points: true
    defaults_version: 0
    groupBars: true
    labelSize: 10pt
    showLegend: true
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
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    interpolation: linear
    value_labels: legend
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    up_color: false
    down_color: false
    total_color: false
    color_application: undefined
    font_size: 12
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
    hidden_pivots: {}
    title_hidden: true
    listen:
      Filtro Fecha: demo_tac.date_filter
      País: demo_tac.pais
      Tienda: demo_tac.tienda
      Marca: demo_tac.cadena
      Sociedades: demo_tac.tipo_de_sociedad
      Agrupación: demo_tac.agrupacion
      Subagrupacion: demo_tac.subagrupacion
      Moneda: demo_tac.moneda
    row: 8
    col: 12
    width: 12
    height: 5
  - title: Ingresos con Validación Satelital
    name: Ingresos con Validación Satelital
    model: tac_project
    explore: demo_tac
    type: looker_column
    fields: [demo_tac.fecha_month_name, demo_tac.fecha_imagenes, demo_tac.Valor_moneda]
    filters:
      demo_tac.fecha_year: '2023'
    sorts: [demo_tac.fecha_month_name]
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
    x_axis_zoom: true
    y_axis_zoom: true
    x_axis_label_rotation: 0
    defaults_version: 1
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
    hidden_fields: [demo_tac.fecha_month_name]
    hidden_pivots: {}
    listen:
      Filtro Fecha: demo_tac.date_filter
      País: demo_tac.pais
      Tienda: demo_tac.tienda
      Marca: demo_tac.cadena
      Sociedades: demo_tac.tipo_de_sociedad
      Subagrupacion: demo_tac.subagrupacion
      Agrupación: demo_tac.agrupacion
      Moneda: demo_tac.moneda
    row: 13
    col: 0
    width: 24
    height: 13
  filters:
  - name: Filtro Fecha
    title: Filtro Fecha
    type: field_filter
    default_value: 1 year
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: tac_project
    explore: demo_tac
    listens_to_filters: []
    field: demo_tac.date_filter
  - name: País
    title: País
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: tac_project
    explore: demo_tac
    listens_to_filters: []
    field: demo_tac.pais
  - name: Tienda
    title: Tienda
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: tac_project
    explore: demo_tac
    listens_to_filters: []
    field: demo_tac.tienda
  - name: Marca
    title: Marca
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: tac_project
    explore: demo_tac
    listens_to_filters: []
    field: demo_tac.cadena
  - name: Sociedades
    title: Sociedades
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: tac_project
    explore: demo_tac
    listens_to_filters: []
    field: demo_tac.tipo_de_sociedad
  - name: Agrupación
    title: Agrupación
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: tac_project
    explore: demo_tac
    listens_to_filters: []
    field: demo_tac.agrupacion
  - name: Subagrupacion
    title: Subagrupacion
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: tac_project
    explore: demo_tac
    listens_to_filters: []
    field: demo_tac.subagrupacion
  - name: Moneda
    title: Moneda
    type: field_filter
    default_value: LOCAL
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_toggles
      display: inline
    model: tac_project
    explore: demo_tac
    listens_to_filters: []
    field: demo_tac.moneda
