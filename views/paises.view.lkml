# The name of this view in Looker is "Paises"
view: paises {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `proyecto-fabio-tafur-datos.demo_looker.paises`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Latitud" in Explore.

  dimension: latitud {
    hidden: yes
    type: number
    sql: ${TABLE}.latitud ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: average_latitud {
    type: average
    sql: ${latitud} ;;
  }

  dimension: longitud {
    hidden: yes
    type: number
    sql: ${TABLE}.longitud ;;
  }

  dimension: ubicacion {
    label: "Coordenadas mapas"
    description: "Concatena laritud y longitud para darme una ubicación"
    type: location
    sql_latitude: ${latitud} ;;
    sql_longitude: ${longitud} ;;
  }
  dimension: pais {
    type: string
    sql: ${TABLE}.pais ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }


  dimension: state_flag_image {
    type: string
    sql: ${pais} ;;
    html:
              {% if pais._value == "Ecuador" %}
              <img src="https://storage.cloud.google.com/bucket_imagenes_looker/anio_anterior.png" height="170" width="255">
              {% elsif pais._value == "Paraguay" %}
              <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/Flag_of_New_York.svg/1200px-Flag_of_New_York.svg.png" height="170" width="255">
              {% elsif pais._value == "Colombia" %}
              <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Flag_of_Colorado.svg/255px-Flag_of_Colorado.svg.png" height="170" width="255">
              {% elsif pais._value == "Uruguay"%}
              <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/01/Flag_of_Illinois.svg/1200px-Flag_of_Illinois.svg.png" height="170" width="255">
              {% else %}
              <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/No_image_available.svg/1024px-No_image_available.svg.png" height="170" width="170">
              {% endif %} ;;
  }

}
