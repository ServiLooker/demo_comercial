- dashboard: anio
  title: Anio
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: IKrYaPnGWwMtwtOkY05Nj0
  elements:
  - title: Comparativo por año
    name: Comparativo por año
    model: tac_project
    explore: demo_tac
    type: looker_grid
    fields: [demo_tac.agrupacion, demo_tac.Valor_moneda, demo_tac.Valor_presupuesto,
      demo_tac.ano, demo_tac.subagrupacion, demo_tac.cuenta_descripcion]
    pivots: [demo_tac.ano]
    sorts: [demo_tac.ano, demo_tac.agrupacion, demo_tac.subagrupacion, demo_tac.Valor_moneda
        desc 0]
    subtotals: [demo_tac.agrupacion, demo_tac.subagrupacion]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${demo_tac.Valor_moneda}/index(${demo_tac.Valor_moneda},1)"
      label: "% Real"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: real
      _type_hint: number
    - category: table_calculation
      expression: "${demo_tac.Valor_presupuesto}/index(${demo_tac.Valor_presupuesto},1)"
      label: "% Ppto"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: ppto
      _type_hint: number
    - category: table_calculation
      expression: "${demo_tac.Valor_moneda}/${demo_tac.Valor_presupuesto}"
      label: Var Ratio
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: var_ratio
      _type_hint: number
    - category: table_calculation
      expression: "${demo_tac.Valor_presupuesto}/(${demo_tac.Valor_moneda}*3.4)"
      label: "% Cumplimiento"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: cumplimiento
      _type_hint: number
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: false
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: []
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_column_widths:
      2015_demo_tac.Valor_moneda: 118
      demo_tac.agrupacion: 189
      2016_demo_tac.Valor_moneda: 109
      2016_real: 125
      grouped-column-demo_tac.agrupacion: 184
    series_cell_visualizations:
      demo_tac.Valor_moneda:
        is_active: true
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
    hidden_pivots: {}
    listen:
      País: demo_tac.pais
      Tienda: demo_tac.tienda
      Sociedades: demo_tac.tipo_de_sociedad
      Agrupación: demo_tac.agrupacion
      Subagrupación: demo_tac.subagrupacion
      Moneda: demo_tac.moneda
      Marca: demo_tac.cadena
    row: 4
    col: 0
    width: 24
    height: 5
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <div style="border-bottom: solid 1px #4285F4;">

      <nav style="font-size: 18px; padding: 5px 10px 0 10px; height: 60px">

      <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="56" > Inicio</a>
      <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="58" > PYG</a>
      <a style="padding: 5px 15px; border-top: solid 1px #4285F4; border-left: solid 1px #4285F4; border-right: solid 1px #4285F4; border-radius: 5px 5px 0 0; float: left; line-height: 40px; font-weight: bold; background-color: #eaf1fe;" href="#"> Año </a>
      <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="60" > Marca</a>
      <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="61" > Tiendas</a>
      <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="57" > TOP</a>
      <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="62" > Rubros</a>

      </nav>

      </div>
    row: 0
    col: 0
    width: 24
    height: 2
  - title: New Tile
    name: New Tile
    model: tac_project
    explore: demo_tac
    type: single_value
    fields: [demo_tac.Total_ingresos, demo_tac.Total_ingresos_anio_anterior]
    filters: {}
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
      is_disabled: true
    - category: table_calculation
      expression: "(${demo_tac.Total_ingresos}-${demo_tac.Total_ingresos_anio_anterior})/${demo_tac.Total_ingresos_anio_anterior}"
      label: A.A
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: aa
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#ffff"
    single_value_title: Ingresos
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#0b0729",
        font_color: !!null '', color_application: {collection_id: jazz, palette_id: jazz-sequential-0},
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
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      percent_of_demo_tac_total_ingresos: "#1fe6c4"
      demo_tac.Total_ingresos: "#e699e0"
      percent_of_demo_tac_total_ingresos_2: "#e6a1bb"
    defaults_version: 1
    hidden_fields: [demo_tac.Total_ingresos_anio_anterior]
    hidden_pivots: {}
    listen:
      País: demo_tac.pais
      Tienda: demo_tac.tienda
      Sociedades: demo_tac.tipo_de_sociedad
      Agrupación: demo_tac.agrupacion
      Subagrupación: demo_tac.subagrupacion
      Moneda: demo_tac.moneda
      Filtro Fecha: demo_tac.date_filter
      Marca: demo_tac.cadena
    row: 2
    col: 0
    width: 6
    height: 2
  - title: New Tile
    name: New Tile (2)
    model: tac_project
    explore: demo_tac
    type: single_value
    fields: [demo_tac.Utilidad_neta, demo_tac.Utilidad_neta_anio_anterior]
    filters: {}
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
      is_disabled: true
    - category: table_calculation
      expression: "(${demo_tac.Utilidad_neta}-${demo_tac.Utilidad_neta_anio_anterior})/${demo_tac.Utilidad_neta_anio_anterior}"
      label: A.A
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: aa
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#ffff"
    single_value_title: Utilidad Neta
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#0b0729",
        font_color: !!null '', color_application: {collection_id: jazz, palette_id: jazz-sequential-0},
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
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      percent_of_demo_tac_total_ingresos: "#1fe6c4"
      demo_tac.Total_ingresos: "#e699e0"
      percent_of_demo_tac_total_ingresos_2: "#e6a1bb"
    defaults_version: 1
    hidden_fields: [demo_tac.Utilidad_neta_anio_anterior]
    hidden_pivots: {}
    listen:
      País: demo_tac.pais
      Tienda: demo_tac.tienda
      Sociedades: demo_tac.tipo_de_sociedad
      Agrupación: demo_tac.agrupacion
      Subagrupación: demo_tac.subagrupacion
      Moneda: demo_tac.moneda
      Filtro Fecha: demo_tac.date_filter
      Marca: demo_tac.cadena
    row: 2
    col: 6
    width: 6
    height: 2
  - title: New Tile
    name: New Tile (3)
    model: tac_project
    explore: demo_tac
    type: single_value
    fields: [demo_tac.Comision_compras, demo_tac.Comision_compras_anio_anterior]
    filters: {}
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
      is_disabled: true
    - category: table_calculation
      expression: "(${demo_tac.Comision_compras}-${demo_tac.Comision_compras_anio_anterior})/${demo_tac.Comision_compras_anio_anterior}"
      label: A.A
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: aa
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#ffff"
    single_value_title: Comisión de compras
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#0b0729",
        font_color: !!null '', color_application: {collection_id: jazz, palette_id: jazz-sequential-0},
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
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      percent_of_demo_tac_total_ingresos: "#1fe6c4"
      demo_tac.Total_ingresos: "#e699e0"
      percent_of_demo_tac_total_ingresos_2: "#e6a1bb"
    defaults_version: 1
    hidden_fields: [demo_tac.Comision_compras_anio_anterior]
    hidden_pivots: {}
    listen:
      País: demo_tac.pais
      Tienda: demo_tac.tienda
      Sociedades: demo_tac.tipo_de_sociedad
      Agrupación: demo_tac.agrupacion
      Subagrupación: demo_tac.subagrupacion
      Moneda: demo_tac.moneda
      Filtro Fecha: demo_tac.date_filter
      Marca: demo_tac.cadena
    row: 2
    col: 12
    width: 6
    height: 2
  - title: New Tile
    name: New Tile (4)
    model: tac_project
    explore: demo_tac
    type: single_value
    fields: [demo_tac.Antes_impuestos, demo_tac.Antes_impuestos_anio_anterior]
    filters: {}
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
      is_disabled: true
    - category: table_calculation
      expression: "(${demo_tac.Antes_impuestos}-${demo_tac.Antes_impuestos_anio_anterior})/${demo_tac.Antes_impuestos_anio_anterior}"
      label: A.A
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: aa
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#ffff"
    single_value_title: Utilidad antes de impuestos
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#0b0729",
        font_color: !!null '', color_application: {collection_id: jazz, palette_id: jazz-sequential-0},
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
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      percent_of_demo_tac_total_ingresos: "#1fe6c4"
      demo_tac.Total_ingresos: "#e699e0"
      percent_of_demo_tac_total_ingresos_2: "#e6a1bb"
    defaults_version: 1
    hidden_fields: [demo_tac.Antes_impuestos_anio_anterior]
    hidden_pivots: {}
    listen:
      País: demo_tac.pais
      Tienda: demo_tac.tienda
      Sociedades: demo_tac.tipo_de_sociedad
      Agrupación: demo_tac.agrupacion
      Subagrupación: demo_tac.subagrupacion
      Moneda: demo_tac.moneda
      Filtro Fecha: demo_tac.date_filter
      Marca: demo_tac.cadena
    row: 2
    col: 18
    width: 6
    height: 2
  - title: Ingresos por año
    name: Ingresos por año
    model: tac_project
    explore: demo_tac
    type: looker_column
    fields: [demo_tac.ano, demo_tac.Total_ingresos]
    sorts: [demo_tac.ano]
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
    color_application:
      collection_id: legacy
      palette_id: fuchsia_to_green
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: demo_tac.Total_ingresos,
            id: demo_tac.Total_ingresos, name: Total Ingresos}], showLabels: true,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    series_colors: {}
    show_dropoff: false
    defaults_version: 1
    listen:
      País: demo_tac.pais
      Tienda: demo_tac.tienda
      Sociedades: demo_tac.tipo_de_sociedad
      Agrupación: demo_tac.agrupacion
      Subagrupación: demo_tac.subagrupacion
      Moneda: demo_tac.moneda
      Marca: demo_tac.cadena
    row: 9
    col: 0
    width: 24
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
