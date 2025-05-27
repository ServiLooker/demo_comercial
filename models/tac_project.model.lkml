# Define the database connection to be used for this model.
connection: "demo_comercial"

# include all the views
include: "/views/**/*.view"
include: "/look_ml_dash/*.dashboard.lookml"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: tac_project_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "24 hour"
}

persist_with: tac_project_default_datagroup

# map_layer: municipios {
#   file: "Colombia_departamentos_municipios_poblacion-topov2.json"
# }

#cambio

explore: demo_tac {
  # access_filter: {
  #   field: pais
  #   user_attribute: pais
  # }
  join: paises {
    sql_on: ${demo_tac.pais}=${paises.pais} ;;
    relationship: many_to_one
    type: left_outer
  }
}

# access_grant: acceso_comision {
#   user_attribute: id
#   allowed_values: ["102","15","23","104","13"]
# }

explore: demo_sandra {
  from: demo_tac
}

explore: municipios_2 {}
