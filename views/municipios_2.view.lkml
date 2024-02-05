# The name of this view in Looker is "Municipios 2"
view: municipios_2 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `proyecto-fabio-tafur-datos.demo_looker.municipios_2` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "C Digo Dane Del Departamento" in Explore.

  dimension: c__digo_dane_del_departamento {
    type: number
    sql: ${TABLE}.C__DIGO_DANE_DEL_DEPARTAMENTO ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_c__digo_dane_del_departamento {
    type: sum
    sql: ${c__digo_dane_del_departamento} ;;  }
  measure: average_c__digo_dane_del_departamento {
    type: average
    sql: ${c__digo_dane_del_departamento} ;;  }

  dimension: c__digo_dane_del_municipio {
    type: number
    sql: ${TABLE}.C__DIGO_DANE_DEL_MUNICIPIO ;;
  }

  dimension: departamento {
    type: string
    sql: ${TABLE}.DEPARTAMENTO ;;
  }

  dimension: municipio {
    type: string
    sql: ${TABLE}.MUNICIPIO ;;
    # map_layer_name: municipios
  }

  dimension: region {
    type: string
    sql: ${TABLE}.REGION ;;
  }
  measure: count {
    type: count
  }
}
