# The name of this view in Looker is "Secop Pruebas"
view: secop_pruebas {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `proyecto-fabio-tafur-datos.demo_looker.secop_pruebas` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Departamento Entidad" in Explore.

  dimension: departamento_entidad {
    type: string
    sql: ${TABLE}.Departamento_Entidad ;;
  }

  dimension: documento_proveedor {
    type: number
    sql: ${TABLE}.Documento_Proveedor ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_documento_proveedor {
    type: sum
    sql: ${documento_proveedor} ;;  }
  measure: average_documento_proveedor {
    type: average
    sql: ${documento_proveedor} ;;  }

  dimension: estado_del_proceso {
    type: string
    sql: ${TABLE}.Estado_del_Proceso ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha_de_firma_del_contrato {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.Fecha_de_Firma_del_Contrato ;;
  }

  dimension_group: fecha_fin_ejecucion {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.Fecha_Fin_Ejecucion ;;
  }

  dimension: fecha_inicio_ejecucion {
    type: string
    sql: ${TABLE}.Fecha_Inicio_Ejecucion ;;
  }

  dimension: genero {
    type: string
    sql: ${TABLE}.genero ;;
  }

  dimension: id_contrato {
    type: string
    sql: ${TABLE}.ID_Contrato ;;
  }

  dimension: id_proceso {
    type: string
    sql: ${TABLE}.ID_Proceso ;;
  }

  dimension: modalidad_de_contratacion {
    type: string
    sql: ${TABLE}.Modalidad_de_Contratacion ;;
  }

  dimension: municipio_entidad {
    type: string
    sql: ${TABLE}.Municipio_Entidad ;;
    map_layer_name: municipios
  }

  dimension: nit_de_la_entidad {
    type: number
    sql: ${TABLE}.NIT_de_la_Entidad ;;
  }

  dimension: nivel_entidad {
    type: string
    sql: ${TABLE}.Nivel_Entidad ;;
  }

  dimension: nom_raz_social_contratista {
    type: string
    sql: ${TABLE}.Nom_Raz_Social_Contratista ;;
  }

  dimension: nombre_de_la_entidad {
    type: string
    sql: ${TABLE}.Nombre_de_la_Entidad ;;
  }

  dimension: objeto_a_contratar {
    type: string
    sql: ${TABLE}.Objeto_a_Contratar ;;
  }

  dimension: objeto_del_proceso {
    type: string
    sql: ${TABLE}.Objeto_del_Proceso ;;
  }

  dimension: origen {
    type: string
    sql: ${TABLE}.Origen ;;
  }

  dimension: tipo_de_contrato {
    type: string
    sql: ${TABLE}.Tipo_de_Contrato ;;
  }

  dimension: ubicacion_departamento {
    type: string
    sql: ${TABLE}.Ubicacion_departamento ;;
  }

  dimension: ubicacion_municipios {
    type: string
    sql: ${TABLE}.Ubicacion_municipios ;;
  }

  dimension: url_contrato {
    type: string
    sql: ${TABLE}.URL_Contrato ;;
  }

  dimension: valor_contrato {
    type: number
    sql: ${TABLE}.Valor_Contrato ;;
  }
  measure: count {
    type: count
  }
}
