connection: "snowflake_prod"

# include all the views
include: "/views/**/*.view"

datagroup: internal_masterdashboard_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: internal_masterdashboard_default_datagroup

explore:  vw_medical{}

explore:  vw_pharmacy{}
