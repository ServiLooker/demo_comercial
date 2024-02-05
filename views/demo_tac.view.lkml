# The name of this view in Looker is "Demo Tac"
view: demo_tac {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `demo_looker.demo_TAC`
    ;;

  dimension: agrupacion {
    type: string
    sql: ${TABLE}.AGRUPACION ;;
    order_by_field: Orden_rubro
    drill_fields: [subagrupacion]
  }

  dimension: ano {
    type: number
    sql: ${TABLE}.ANO ;;
  }

  measure: total_ano {
    type: sum
    sql: ${ano} ;;
  }

  measure: average_ano {
    type: average
    sql: ${ano} ;;
  }

  dimension: cadena {
    type: string
    sql: REGEXP_REPLACE(${TABLE}.CADENA,r'\s', '') ;;
    link: {
      label: "Página web"
      url: "https://{{ value }}.com"
      icon_url: "https://us.123rf.com/450wm/liliiakliliiakyrylenko/liliiakliliiakyrylenko1708/liliiakliliiakyrylenko170800009/83425189-icono-de-internet-s%C3%ADmbolo-del-sitio-web-signo-del-mundo.jpg"
    }
  }


  dimension: centro {
    type: number
    sql: ${TABLE}.CENTRO ;;
  }

  dimension: cuenta_descripcion {
    type: string
    sql: ${TABLE}.CUENTA_DESCRIPCION ;;
  }

  dimension: cuenta_texto {
    type: number
    sql: ${TABLE}.CUENTA_TEXTO ;;
  }

  dimension_group: fecha {
    type: time
    timeframes: [date,month_name,month_num,year]
    sql: CAST(CONCAT(ano,"-",if(MES<10,concat("0",MES),cast(MES as string)),"-01") AS TIMESTAMP) ;;
    convert_tz: yes
  }

  dimension: mes {
    type: number
    sql: ${TABLE}.MES ;;
  }

  dimension: pais {
    type: string
    sql: ${TABLE}.PAIS ;;
  }

  dimension: ppto_moneda_local {
    type: number
    sql: ${TABLE}.PPTO_MONEDA_LOCAL ;;
  }

  dimension: ppto_usd {
    type: number
    sql: ${TABLE}.PPTO_USD ;;
  }

  dimension: subagrupacion {
    type: string
    sql: ${TABLE}.SUBAGRUPACION ;;
    drill_fields: [cuenta_descripcion]
  }

  dimension: tienda {
    type: string
    sql: ${TABLE}.TIENDA ;;
  }

  dimension: tipo_de_sociedad {
    type: string
    sql: ${TABLE}.TIPO_DE_SOCIEDAD ;;
  }

  dimension: valor_real_moneda_local {
    type: number
    sql: ${TABLE}.VALOR_REAL_MONEDA_LOCAL ;;
  }

  dimension: valor_real_usd {
    type: number
    sql: ${TABLE}.VALOR_REAL_USD ;;
  }

  dimension: email {
    type: string
    sql:
    CASE
    WHEN ${pais} = "Peru" THEN "jairo.torres@servinformacion.com"
    WHEN ${pais} = "Colombia" THEN "fabio.tafur@servinformacion.com"
    WHEN ${pais} = "Ecuador" THEN "leidy.estupinan@servinformacion.com"
    WHEN ${pais} = "Panama" THEN "ana.rozo@servinformacion.com"
    WHEN ${pais} = "Paraguay" THEN "leidy.quina@servinformacion.com"
    END
    ;;
    link: {
      label: "Send Email"
      icon_url: "https://cdn.iconscout.com/icon/free/png-256/apple-mail-493152.png"
      url: "mailto:{{ value }}"
    }
  }

  measure: count {
    type: count
    drill_fields: []
  }

  parameter: moneda {
    type: unquoted
    allowed_value: {
      label: "Moneda Local"
      value: "LOCAL"
    }
    allowed_value: {
      label: "USD"
      value: "USD"
    }
  }

  measure: Valor_moneda {
    filters: [is_current_period: "Yes"]
    type: sum
    sql:
    {% if moneda._parameter_value == 'LOCAL' %}
      ${valor_real_moneda_local}
    {% else %}
      ${valor_real_usd}
    {% endif %} ;;
    value_format_name: "usd"
    drill_fields: [datos*]
  }

  measure: Valor_moneda_anio_anterior {
    filters: [is_previous_period: "Yes"]
    type: sum
    sql:
    {% if moneda._parameter_value == 'LOCAL' %}
      ${valor_real_moneda_local}
    {% else %}
      ${valor_real_usd}
    {% endif %} ;;
    value_format_name: "usd"
  }

  measure: Valor_presupuesto {
    filters: [is_current_period: "Yes"]
    type: sum
    sql:
    {% if moneda._parameter_value == 'LOCAL' %}
      ${ppto_moneda_local}
    {% else %}
      ${ppto_usd}
    {% endif %} ;;
    value_format_name: "usd"
    drill_fields: [datos*]
  }

  measure: Total_ingresos {
    filters: [is_current_period: "Yes"]
    type: sum
    sql:
    {% if moneda._parameter_value == 'LOCAL' %}
      ${valor_real_moneda_local}
    {% else %}
      ${valor_real_usd}
    {% endif %} ;;
    filters: [agrupacion: "Ingresos"]
    value_format:"$#,##0.00"
    drill_fields: [cuenta_descripcion,Total_ingresos]
    link: {
      label: "Mostrar ingresos por cuenta"
      url: "
      {% assign vis_config = '{
      \"type\" : \"looker_pie\",
      \"value_labels\" : \"legend\",
      \"label_type\" : \"string\",
      \"inner_radius\" : \"60\",
      \"collection_id\": [ \"type : collection\", \"collection_id : palette\", \"value : legacy\" ]
      }
      ' %}
      {{ link }}&vis_config={{ vis_config | encode_uri }}&toggle=dat,pik,vis&limit=5000"
    }
  }


  measure: porcentaje_ingresos_total {
    type: number
    sql:  ;;
}

measure: Total_ingresos_anio_anterior {
  filters: [is_previous_period: "Yes"]
  type: sum
  sql:
    {% if moneda._parameter_value == 'LOCAL' %}
      ${valor_real_moneda_local}
    {% else %}
      ${valor_real_usd}
    {% endif %} ;;
  filters: [agrupacion: "Ingresos"]
  value_format:"$#,##0.00"
}

measure: Utilidad_neta {
  filters: [is_current_period: "Yes"]
  type: sum
  sql:
    {% if moneda._parameter_value == 'LOCAL' %}
      ${valor_real_moneda_local}
    {% else %}
      ${valor_real_usd}
    {% endif %} ;;
  filters: [agrupacion: "Utilidad neta"]
  value_format:"$#,##0.00"
  drill_fields: [pais,cuenta_descripcion,Utilidad_neta]
  link: {
    label: "Mostrar utilidades por país"
    url: "
    {% assign vis_config = '{
    \"type\" : \"looker_waterfall\",
    \"limit\" : \"10\"
    }
    ' %}
    {{ link }}&vis_config={{ vis_config | encode_uri }}&toggle=dat,pik,vis&limit=5000"
  }
}

measure: Utilidad_neta_anio_anterior {
  filters: [is_previous_period: "Yes"]
  type: sum
  sql:
    {% if moneda._parameter_value == 'LOCAL' %}
      ${valor_real_moneda_local}
    {% else %}
      ${valor_real_usd}
    {% endif %} ;;
  filters: [agrupacion: "Utilidad neta"]
  value_format:"$#,##0.00"
}

dimension: Orden_rubro {
  type: string
  case: {
    when: {
      sql: ${agrupacion} = "Ingresos" ;;
      label: "1"
    }
    when: {
      sql: ${agrupacion} = "Ventas" ;;
      label: "2"
    }
    when: {
      sql: ${agrupacion} = "Costos" ;;
      label: "3"
    }
    when: {
      sql: ${agrupacion} = "Utilidad antes de impuestos" ;;
      label: "4"
    }
    when: {
      sql: ${agrupacion} = "Comision de compras" ;;
      label: "5"
    }
    when: {
      sql: ${agrupacion} = "Utilidad neta" ;;
      label: "6"
    }
  }
}


measure: Antes_impuestos {
  filters: [is_current_period: "Yes"]
  type: sum
  sql:
    {% if moneda._parameter_value == 'LOCAL' %}
      ${valor_real_moneda_local}
    {% else %}
      ${valor_real_usd}
    {% endif %} ;;
  filters: [agrupacion: "Utilidad antes de impuestos"]
  value_format:"$#,##0.00"
  drill_fields: [cadena,Antes_impuestos,Antes_impuestos_anio_anterior]
}

measure: Antes_impuestos_anio_anterior {
  filters: [is_previous_period: "Yes"]
  type: sum
  sql:
    {% if moneda._parameter_value == 'LOCAL' %}
      ${valor_real_moneda_local}
    {% else %}
      ${valor_real_usd}
    {% endif %} ;;
  filters: [agrupacion: "Utilidad antes de impuestos"]
  value_format:"$#,##0.00"
}

measure: Comision_compras {
  filters: [is_current_period: "Yes"]
  type: sum
  sql:
    {% if moneda._parameter_value == 'LOCAL' %}
      ${valor_real_moneda_local}
    {% else %}
      ${valor_real_usd}
    {% endif %} ;;
  filters: [agrupacion: "Comision de compras"]
  value_format:"$#,##0.00"
  drill_fields: [fecha_month_name,Comision_compras]
  link: {
    label: "Mostrar comisión por meses"
    url: "
    {% assign vis_config = '{
    \"type\" : \"looker_line\",
    \"x_axis_gridlines\" : \"false\",
    \"y_axis_gridlines\": \"true\",
    \"show_view_names\": \"false\",
    \"show_y_axis_labels\" : \"true\",
    \"show_y_axis_ticks\": \"true\",
    \"y_axis_tick_density\": \"default\",
    \"y_axis_tick_density_custom\" : \"5\",
    \"show_x_axis_label\" : \"false\",
    \"show_x_axis_ticks\": \"true\",
    \"y_axis_scale_mode\" : \"linear\",
    \"legend_position\": \"center\",
    \"point_style\": \"circle_outline\",
    \"show_value_labels\": \"false\",
    \"color_application\":[
    \"collection_id: legacy\",
    \"palette_id: looker_classic\"],
    \"totals_color\": \"#808080\"}
    ' %}
    {{ link }}&vis_config={{ vis_config | encode_uri }}&toggle=dat,pik,vis&limit=5000"
  }
  # required_access_grants: [acceso_comision]
}

measure: Comision_compras_anio_anterior {
  filters: [is_previous_period: "Yes"]
  type: sum
  sql:
    {% if moneda._parameter_value == 'LOCAL' %}
      ${valor_real_moneda_local}
    {% else %}
      ${valor_real_usd}
    {% endif %} ;;
  filters: [agrupacion: "Comision de compras"]
  value_format:"$#,##0.00"
  # required_access_grants: [acceso_comision]
}

measure: variacion {
  type: number
  sql: ${Valor_moneda}/${Valor_presupuesto} ;;
  value_format: "0.00%"
}


############################### Comparativo con el tiempo ###############################

filter: date_filter {
  label: "Filtro Fecha"
  type: date
}

dimension_group: filter_start_date {
  label: "Filtro Inicio del período"
  hidden: no
  type: time
  timeframes: [raw,date]
  sql: CASE WHEN {% date_start date_filter %} IS NULL THEN '2015-01-01' ELSE CAST({% date_start date_filter %} AS DATE) END ;;
}

dimension_group: filter_end_date {
  label: "Filtro Final del período"
  hidden: no
  type: time
  timeframes: [raw,date]
  sql: CASE WHEN {% date_end date_filter %} IS NULL THEN CURRENT_DATE ELSE CAST({% date_end date_filter %} AS DATE) END ;;
}

dimension: interval {
  label: "Intervalo"
  hidden: no
  type: number
  sql: date_diff(${filter_end_date_raw},${filter_start_date_raw}, DAY) ;;
}

dimension_group: previous_start_date{
  hidden: no
  type: time
  timeframes: [raw,date]
  sql: ${filter_start_date_raw} - 365  ;;
}

dimension: previous_end_date {
  hidden: no
  type:  date
  sql: ${previous_start_date_raw} + ${interval} ;;
}

dimension: is_current_period {
  hidden: yes
  type: yesno
  sql: DATE(${fecha_date}) >= ${filter_start_date_date} AND date(${fecha_date})  < ${filter_end_date_date} ;;
}

dimension: is_previous_period {
  hidden: yes
  type: yesno
  sql: date(${fecha_date}) >= ${previous_start_date_date} AND date(${fecha_date}) < ${previous_end_date} ;;
}


######################################### SET DE DATOS ########################
set: datos {
  fields: [
    pais,cadena,tienda,agrupacion,subagrupacion, Valor_moneda,Valor_presupuesto, variacion, email
  ]
}

dimension: fecha_imagenes {
  type: string
  sql: CONCAT(${fecha_year},"_",${fecha_month_num}) ;;
  html:
    <img src="https://storage.cloud.google.com/bucket_imagenes_looker/{{value}}.png" height="180" width="130">;;
}

# dimension: imagenes_por_mes {
#   type: string
#   sql: ${pais} ;;
#   html:
#             {% if pais._value == "Ecuador" %}
#             <img src="https://storage.cloud.google.com/bucket_imagenes_looker/anio_anterior.png" height="170" width="255">
#             {% elsif pais._value == "Paraguay" %}
#             <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/Flag_of_New_York.svg/1200px-Flag_of_New_York.svg.png" height="170" width="255">
#             {% elsif pais._value == "Colombia" %}
#             <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Flag_of_Colorado.svg/255px-Flag_of_Colorado.svg.png" height="170" width="255">
#             {% elsif pais._value == "Uruguay"%}
#             <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/01/Flag_of_Illinois.svg/1200px-Flag_of_Illinois.svg.png" height="170" width="255">
#             {% else %}
#             <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/No_image_available.svg/1024px-No_image_available.svg.png" height="170" width="170">
#             {% endif %} ;;
# }


}
