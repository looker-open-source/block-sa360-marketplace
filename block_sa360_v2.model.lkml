connection: "@{CONNECTION_NAME}"

include: "/dashboards/*.dashboard.lookml"
include: "/explores/*.explore"


datagroup: block_sa360_v2_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: block_sa360_v2_default_datagroup
