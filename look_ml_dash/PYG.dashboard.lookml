- dashboard: pyg
  title: PYG
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: 9xtwYvapLE8c3yfhGa9XxX
  elements:
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
      Tienda: demo_tac.tienda
      Sociedades: demo_tac.tipo_de_sociedad
      Moneda: demo_tac.moneda
      País: demo_tac.pais
      Marca: demo_tac.cadena
      Agrupación: demo_tac.agrupacion
      Subagrupación: demo_tac.subagrupacion
      Fecha: demo_tac.date_filter
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
      Tienda: demo_tac.tienda
      Sociedades: demo_tac.tipo_de_sociedad
      Moneda: demo_tac.moneda
      País: demo_tac.pais
      Marca: demo_tac.cadena
      Agrupación: demo_tac.agrupacion
      Subagrupación: demo_tac.subagrupacion
      Fecha: demo_tac.date_filter
    row: 2
    col: 6
    width: 6
    height: 2
  - title: New Tile
    name: New Tile (3)
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
      Tienda: demo_tac.tienda
      Sociedades: demo_tac.tipo_de_sociedad
      Moneda: demo_tac.moneda
      País: demo_tac.pais
      Marca: demo_tac.cadena
      Agrupación: demo_tac.agrupacion
      Subagrupación: demo_tac.subagrupacion
      Fecha: demo_tac.date_filter
    row: 2
    col: 18
    width: 6
    height: 2
  - title: Perdidas y Ganancias
    name: Perdidas y Ganancias
    model: tac_project
    explore: demo_tac
    type: looker_grid
    fields: [demo_tac.agrupacion, demo_tac.Valor_moneda, demo_tac.Valor_presupuesto,
      demo_tac.Valor_moneda_anio_anterior]
    sorts: [demo_tac.Valor_moneda desc]
    limit: 500
    column_limit: 50
    total: true
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
    - category: table_calculation
      expression: "(${demo_tac.Valor_moneda}-${demo_tac.Valor_moneda_anio_anterior})/${demo_tac.Valor_moneda_anio_anterior}"
      label: Diferencia año anterior
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: diferencia_ano_anterior
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
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      demo_tac.Valor_moneda:
        is_active: false
        value_display: true
    conditional_formatting: [{type: greater than, value: 1, background_color: "#08e617",
        font_color: !!null '', color_application: {collection_id: jazz, palette_id: jazz-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: [cumplimiento]},
      {type: less than, value: 1, background_color: "#e61108", font_color: !!null '',
        color_application: {collection_id: jazz, palette_id: jazz-sequential-0}, bold: false,
        italic: false, strikethrough: false, fields: [cumplimiento]}]
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
    hidden_fields: [demo_tac.Valor_moneda_anio_anterior]
    listen:
      Tienda: demo_tac.tienda
      Sociedades: demo_tac.tipo_de_sociedad
      Moneda: demo_tac.moneda
      País: demo_tac.pais
      Marca: demo_tac.cadena
      Agrupación: demo_tac.agrupacion
      Subagrupación: demo_tac.subagrupacion
      Fecha: demo_tac.date_filter
    row: 4
    col: 0
    width: 24
    height: 5
  - title: New Tile
    name: New Tile (4)
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
      Tienda: demo_tac.tienda
      Sociedades: demo_tac.tipo_de_sociedad
      Moneda: demo_tac.moneda
      País: demo_tac.pais
      Marca: demo_tac.cadena
      Agrupación: demo_tac.agrupacion
      Subagrupación: demo_tac.subagrupacion
      Fecha: demo_tac.date_filter
    row: 2
    col: 12
    width: 6
    height: 2
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <div style="border-bottom: solid 1px #4285F4;">

      <nav style="font-size: 18px; padding: 5px 10px 0 10px; height: 60px">

      <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="56" > Inicio</a>
      <a style="padding: 5px 15px; border-top: solid 1px #4285F4; border-left: solid 1px #4285F4; border-right: solid 1px #4285F4; border-radius: 5px 5px 0 0; float: left; line-height: 40px; font-weight: bold; background-color: #eaf1fe;" href="#"> PYG </a>
      <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="59" > Año</a>
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
  - title: Ingresos por marca y Tienda
    name: Ingresos por marca y Tienda
    model: tac_project
    explore: demo_tac
    type: looker_line
    fields: [demo_tac.cadena, demo_tac.Total_ingresos, demo_tac.Total_ingresos_anio_anterior,
      demo_tac.tienda]
    filters:
      demo_tac.Total_ingresos: ''
    sorts: [demo_tac.cadena desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: false
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
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: legacy
      palette_id: random
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: demo_tac.Total_ingresos,
            id: demo_tac.Total_ingresos, name: Total Ingresos}, {axisId: demo_tac.Total_ingresos_anio_anterior,
            id: demo_tac.Total_ingresos_anio_anterior, name: Total Ingresos Anio Anterior}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: false
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    series_colors:
      demo_tac.Total_ingresos_anio_anterior: "#d94141"
    series_labels: {}
    label_color: ["#fff"]
    swap_axes: false
    advanced_vis_config: |-
      {
        chart: {
          backgroundColor: "gray"
        },
        series: [{
          color: 'white',
          name: 'Total Ingresos'
        }, {
          name: 'Total Ingresos Anio Anterior'
        }],
        title: {
         style: {
         color: "white"
          }
        }
      }
    cluster_points: false
    quadrants_enabled: false
    quadrant_properties:
      '0':
        color: ''
        label: Quadrant 1
      '1':
        color: ''
        label: Quadrant 2
      '2':
        color: ''
        label: Quadrant 3
      '3':
        color: ''
        label: Quadrant 4
    custom_quadrant_point_x: 5
    custom_quadrant_point_y: 5
    custom_x_column: ''
    custom_y_column: ''
    custom_value_label_column: ''
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    hidden_fields:
    hidden_points_if_no: []
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_pivots: {}
    listen:
      Sociedades: demo_tac.tipo_de_sociedad
      País: demo_tac.pais
      Marca: demo_tac.cadena
      Tienda: demo_tac.tienda
      Agrupación: demo_tac.agrupacion
      Subagrupación: demo_tac.subagrupacion
      Moneda: demo_tac.moneda
    row: 9
    col: 0
    width: 11
    height: 6
  - title: Ingresos por mes
    name: Ingresos por mes
    model: tac_project
    explore: demo_tac
    type: looker_column
    fields: [demo_tac.Total_ingresos, demo_tac.fecha_month_name]
    fill_fields: [demo_tac.fecha_month_name]
    filters: {}
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: legacy
      palette_id: mixed_neutrals
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: demo_tac.Total_ingresos,
            id: demo_tac.Total_ingresos, name: Total Ingresos}], showLabels: true,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: false
    font_size: '9'
    series_colors: {}
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
      Fecha: demo_tac.date_filter
      Sociedades: demo_tac.tipo_de_sociedad
      País: demo_tac.pais
      Marca: demo_tac.cadena
      Tienda: demo_tac.tienda
      Agrupación: demo_tac.agrupacion
      Subagrupación: demo_tac.subagrupacion
      Moneda: demo_tac.moneda
    row: 9
    col: 11
    width: 13
    height: 6
  - title: New Tile (Copy)
    name: New Tile (Copy)
    model: tac_project
    explore: demo_tac
    type: single_value
    fields: [demo_tac.Total_ingresos, demo_tac.Utilidad_neta]
    filters: {}
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${demo_tac.Total_ingresos}/${demo_tac.Utilidad_neta}"
      label: porcentaje
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: porcentaje
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
    custom_color: "#12B5CB"
    single_value_title: Utilidad Neta
    conditional_formatting: []
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
    hidden_fields: [demo_tac.Utilidad_neta]
    hidden_pivots: {}
    listen:
      Tienda: demo_tac.tienda
      Sociedades: demo_tac.tipo_de_sociedad
      Moneda: demo_tac.moneda
      País: demo_tac.pais
      Marca: demo_tac.cadena
      Agrupación: demo_tac.agrupacion
      Subagrupación: demo_tac.subagrupacion
      Fecha: demo_tac.date_filter
    row: 15
    col: 0
    width: 11
    height: 2
  - title: New Tile (Copy 2)
    name: New Tile (Copy 2)
    model: tac_project
    explore: demo_tac
    type: single_value
    fields: [demo_tac.Total_ingresos, demo_tac.Utilidad_neta]
    filters: {}
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${demo_tac.Total_ingresos}/${demo_tac.Utilidad_neta}"
      label: porcentaje
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: porcentaje
      _type_hint: number
      is_disabled: true
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
    custom_color: "#12B5CB"
    single_value_title: Utilidad Neta
    conditional_formatting: []
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
    hidden_fields:
    hidden_pivots: {}
    listen:
      Tienda: demo_tac.tienda
      Sociedades: demo_tac.tipo_de_sociedad
      Moneda: demo_tac.moneda
      País: demo_tac.pais
      Marca: demo_tac.cadena
      Agrupación: demo_tac.agrupacion
      Subagrupación: demo_tac.subagrupacion
      Fecha: demo_tac.date_filter
    row: 15
    col: 11
    width: 11
    height: 2
  filters:
  - name: Fecha
    title: Fecha
    type: field_filter
    default_value: 2 year
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
    listens_to_filters: [Tienda, Marca]
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
    listens_to_filters: [País, Marca]
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
    listens_to_filters: [País, Tienda]
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
    listens_to_filters: [País, Tienda, Marca]
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
    listens_to_filters: [País, Tienda, Marca]
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
    listens_to_filters: [País, Tienda, Marca]
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
