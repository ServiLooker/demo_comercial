- dashboard: top
  title: TOP
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: Q2b5fznD2YMP0MEPgjIHC4
  elements:
  - title: Ingresos por país
    name: Ingresos por país
    model: tac_project
    explore: demo_tac
    type: looker_bar
    fields: [demo_tac.Total_ingresos, demo_tac.pais]
    sorts: [demo_tac.Total_ingresos desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      label: Percent of Demo Tac Total Ingresos
      value_format:
      value_format_name: percent_2
      calculation_type: percent_of_column_sum
      table_calculation: percent_of_demo_tac_total_ingresos
      args:
      - demo_tac.Total_ingresos
      _kind_hint: measure
      _type_hint: number
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    y_axes: [{label: '', orientation: bottom, series: [{axisId: percent_of_demo_tac_total_ingresos,
            id: percent_of_demo_tac_total_ingresos, name: Percent of Demo Tac Total
              Ingresos}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      percent_of_demo_tac_total_ingresos: "#49cec1"
    label_color: ["#2C766E"]
    defaults_version: 1
    hidden_fields: [demo_tac.Total_ingresos]
    listen:
      Filtro Fecha: demo_tac.date_filter
      País: demo_tac.pais
      Marca: demo_tac.cadena
      Tienda: demo_tac.tienda
      Sociedades: demo_tac.tipo_de_sociedad
      Agrupación: demo_tac.agrupacion
      Subagrupación: demo_tac.subagrupacion
      Moneda: demo_tac.moneda
    row: 2
    col: 0
    width: 8
    height: 6
  - title: Utilidad por país
    name: Utilidad por país
    model: tac_project
    explore: demo_tac
    type: looker_bar
    fields: [demo_tac.Utilidad_neta, demo_tac.pais]
    sorts: [demo_tac.Utilidad_neta desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      label: Percent of Demo Tac Utilidad Neta
      value_format:
      value_format_name: percent_2
      calculation_type: percent_of_column_sum
      table_calculation: percent_of_demo_tac_utilidad_neta
      args:
      - demo_tac.Utilidad_neta
      _kind_hint: measure
      _type_hint: number
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    y_axes: [{label: !!null '', orientation: top, series: [{axisId: percent_of_demo_tac_utilidad_neta,
            id: percent_of_demo_tac_utilidad_neta, name: Percent of Demo Tac Utilidad
              Neta}], showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: '', orientation: bottom, series: [
          {axisId: demo_tac.Utilidad_neta, id: demo_tac.Utilidad_neta, name: Utilidad
              Neta}], showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: false
    series_types:
      percent_of_demo_tac_utilidad_neta: line
    series_colors:
      demo_tac.Utilidad_neta: "#49cec1"
    label_color: ["#2C766E"]
    defaults_version: 1
    hidden_fields: [percent_of_demo_tac_utilidad_neta]
    listen:
      Filtro Fecha: demo_tac.date_filter
      País: demo_tac.pais
      Marca: demo_tac.cadena
      Tienda: demo_tac.tienda
      Sociedades: demo_tac.tipo_de_sociedad
      Agrupación: demo_tac.agrupacion
      Subagrupación: demo_tac.subagrupacion
      Moneda: demo_tac.moneda
    row: 8
    col: 0
    width: 8
    height: 6
  - title: Ingresos por marcas
    name: Ingresos por marcas
    model: tac_project
    explore: demo_tac
    type: looker_bar
    fields: [demo_tac.cadena, demo_tac.Total_ingresos]
    sorts: [demo_tac.Total_ingresos desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      label: Percent of Demo Tac Total Ingresos
      value_format:
      value_format_name: percent_2
      calculation_type: percent_of_column_sum
      table_calculation: percent_of_demo_tac_total_ingresos
      args:
      - demo_tac.Total_ingresos
      _kind_hint: measure
      _type_hint: number
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    y_axes: [{label: '', orientation: bottom, series: [{axisId: percent_of_demo_tac_total_ingresos,
            id: percent_of_demo_tac_total_ingresos, name: Percent of Demo Tac Total
              Ingresos}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hide_legend: false
    series_colors:
      percent_of_demo_tac_total_ingresos: "#b3a0dd"
    label_color: ["#706785"]
    defaults_version: 1
    hidden_fields: [demo_tac.Total_ingresos]
    hidden_pivots: {}
    listen:
      Filtro Fecha: demo_tac.date_filter
      País: demo_tac.pais
      Marca: demo_tac.cadena
      Tienda: demo_tac.tienda
      Sociedades: demo_tac.tipo_de_sociedad
      Agrupación: demo_tac.agrupacion
      Subagrupación: demo_tac.subagrupacion
      Moneda: demo_tac.moneda
    row: 2
    col: 8
    width: 8
    height: 6
  - title: Ingresos por tienda
    name: Ingresos por tienda
    model: tac_project
    explore: demo_tac
    type: looker_bar
    fields: [demo_tac.Total_ingresos, demo_tac.tienda]
    filters: {}
    sorts: [demo_tac.Total_ingresos desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      label: Percent of Demo Tac Total Ingresos
      value_format:
      value_format_name: percent_2
      calculation_type: percent_of_column_sum
      table_calculation: percent_of_demo_tac_total_ingresos
      args:
      - demo_tac.Total_ingresos
      _kind_hint: measure
      _type_hint: number
      is_disabled: true
    - category: table_calculation
      label: Percent of Demo Tac Total Ingresos
      value_format:
      value_format_name: percent_2
      calculation_type: percent_of_column_sum
      table_calculation: percent_of_demo_tac_total_ingresos_1
      args:
      - demo_tac.Total_ingresos
      _kind_hint: measure
      _type_hint: number
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: legacy
      palette_id: random
      options:
        steps: 5
    y_axes: [{label: '', orientation: bottom, series: [{axisId: percent_of_demo_tac_total_ingresos_1,
            id: percent_of_demo_tac_total_ingresos_1, name: Percent of Demo Tac Total
              Ingresos}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      percent_of_demo_tac_total_ingresos_1: "#ff7aa3"
    label_color: ["#91485E"]
    defaults_version: 1
    hidden_fields: [demo_tac.Total_ingresos]
    hidden_pivots: {}
    listen:
      Filtro Fecha: demo_tac.date_filter
      País: demo_tac.pais
      Marca: demo_tac.cadena
      Tienda: demo_tac.tienda
      Sociedades: demo_tac.tipo_de_sociedad
      Agrupación: demo_tac.agrupacion
      Subagrupación: demo_tac.subagrupacion
      Moneda: demo_tac.moneda
    row: 2
    col: 16
    width: 8
    height: 6
  - title: Utilidad por marcas
    name: Utilidad por marcas
    model: tac_project
    explore: demo_tac
    type: looker_bar
    fields: [demo_tac.Utilidad_neta, demo_tac.cadena]
    sorts: [demo_tac.Utilidad_neta desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - args:
      - demo_tac.Utilidad_neta
      calculation_type: percent_of_column_sum
      category: table_calculation
      based_on: demo_tac.Utilidad_neta
      label: Percent of Demo Tac Utilidad Neta
      source_field: demo_tac.Utilidad_neta
      table_calculation: percent_of_demo_tac_utilidad_neta
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
      is_disabled: true
    - args:
      - percent_of_demo_tac_utilidad_neta
      calculation_type: percent_of_column_sum
      category: table_calculation
      based_on: percent_of_demo_tac_utilidad_neta
      label: Percent of  Percent of Demo Tac Utilidad Neta
      source_field: percent_of_demo_tac_utilidad_neta
      table_calculation: percent_of_percent_of_demo_tac_utilidad_neta
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
      is_disabled: true
    - args:
      - percent_of_percent_of_demo_tac_utilidad_neta
      calculation_type: percent_of_column_sum
      category: table_calculation
      based_on: percent_of_percent_of_demo_tac_utilidad_neta
      label: Percent of  Percent of  Percent of Demo Tac Utilidad Neta
      source_field: percent_of_percent_of_demo_tac_utilidad_neta
      table_calculation: percent_of_percent_of_percent_of_demo_tac_utilidad_neta
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
      is_disabled: true
    - args:
      - demo_tac.Utilidad_neta
      calculation_type: percent_of_column_sum
      category: table_calculation
      based_on: demo_tac.Utilidad_neta
      label: Percent of Demo Tac Utilidad Neta
      source_field: demo_tac.Utilidad_neta
      table_calculation: percent_of_demo_tac_utilidad_neta_2
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
      is_disabled: true
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    y_axes: [{label: '', orientation: bottom, series: [{axisId: demo_tac.Utilidad_neta,
            id: demo_tac.Utilidad_neta, name: Utilidad Neta}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: []
    series_colors:
      demo_tac.Utilidad_neta: "#b3a0dd"
    label_color: ["#706785"]
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields:
    listen:
      Filtro Fecha: demo_tac.date_filter
      País: demo_tac.pais
      Marca: demo_tac.cadena
      Tienda: demo_tac.tienda
      Sociedades: demo_tac.tipo_de_sociedad
      Agrupación: demo_tac.agrupacion
      Subagrupación: demo_tac.subagrupacion
      Moneda: demo_tac.moneda
    row: 8
    col: 8
    width: 8
    height: 6
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <div style="border-bottom: solid 1px #4285F4;">

      <nav style="font-size: 18px; padding: 5px 10px 0 10px; height: 60px">

      <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="56" >Inicio </a>
      <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="58" > PYG</a>
      <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="59" > Año</a>
      <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="60" > Marca</a>
      <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="61" > Tiendas</a>
      <a style="padding: 5px 15px; border-top: solid 1px #4285F4; border-left: solid 1px #4285F4; border-right: solid 1px #4285F4; border-radius: 5px 5px 0 0; float: left; line-height: 40px; font-weight: bold; background-color: #eaf1fe;" href="#"> TOP</a>
      <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="62" > Rubros</a>

      </nav>

      </div>
    row: 0
    col: 0
    width: 24
    height: 2
  - title: Utilidad por tienda
    name: Utilidad por tienda
    model: tac_project
    explore: demo_tac
    type: looker_bar
    fields: [demo_tac.Utilidad_neta, demo_tac.tienda]
    sorts: [demo_tac.Utilidad_neta desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - args:
      - demo_tac.Utilidad_neta
      calculation_type: percent_of_column_sum
      category: table_calculation
      based_on: demo_tac.Utilidad_neta
      label: Percent of Demo Tac Utilidad Neta
      source_field: demo_tac.Utilidad_neta
      table_calculation: percent_of_demo_tac_utilidad_neta
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
      is_disabled: true
    - args:
      - percent_of_demo_tac_utilidad_neta
      calculation_type: percent_of_column_sum
      category: table_calculation
      based_on: percent_of_demo_tac_utilidad_neta
      label: Percent of  Percent of Demo Tac Utilidad Neta
      source_field: percent_of_demo_tac_utilidad_neta
      table_calculation: percent_of_percent_of_demo_tac_utilidad_neta
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
      is_disabled: true
    - args:
      - percent_of_percent_of_demo_tac_utilidad_neta
      calculation_type: percent_of_column_sum
      category: table_calculation
      based_on: percent_of_percent_of_demo_tac_utilidad_neta
      label: Percent of  Percent of  Percent of Demo Tac Utilidad Neta
      source_field: percent_of_percent_of_demo_tac_utilidad_neta
      table_calculation: percent_of_percent_of_percent_of_demo_tac_utilidad_neta
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
      is_disabled: true
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: legacy
      palette_id: random
      options:
        steps: 5
    y_axes: [{label: '', orientation: bottom, series: [{axisId: demo_tac.Utilidad_neta,
            id: demo_tac.Utilidad_neta, name: Utilidad Neta}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: []
    series_colors:
      demo_tac.Utilidad_neta: "#ff7aa3"
    label_color: ["#91485E"]
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields:
    listen:
      Filtro Fecha: demo_tac.date_filter
      País: demo_tac.pais
      Marca: demo_tac.cadena
      Tienda: demo_tac.tienda
      Sociedades: demo_tac.tipo_de_sociedad
      Agrupación: demo_tac.agrupacion
      Subagrupación: demo_tac.subagrupacion
      Moneda: demo_tac.moneda
    row: 8
    col: 16
    width: 8
    height: 6
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
  - name: Subagrupación
    title: Subagrupación
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
