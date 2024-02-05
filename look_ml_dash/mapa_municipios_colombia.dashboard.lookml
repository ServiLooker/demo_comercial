- dashboard: mapa_municipios_colombia
  title: Mapa Municipios Colombia
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: jgTmZI603n3yT4U3zS7hsf
  elements:
  - title: Mapa Municipios Colombia
    name: Mapa Municipios Colombia
    model: tac_project
    explore: municipios_2
    type: looker_google_map
    fields: [municipios_2.municipio, municipios_2.average_c__digo_dane_del_departamento]
    sorts: [municipios_2.municipio]
    limit: 5000
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    defaults_version: 0
    hidden_pivots: {}
    listen: {}
    row: 2
    col: 0
    width: 24
    height: 10
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |
      <div style="display: flex; align-items: center; justify-content: center; text-align: center;">
        <img src="https://cdn.icon-icons.com/icons2/1850/PNG/512/statistics_116490.png" alt="Imagen" width="60">
        <p style="margin-left: 10px; font-size: 20px; color: #6a673;"><b>Interacciones por municipio</b></p>
      </div>
    row: 0
    col: 0
    width: 24
    height: 2
