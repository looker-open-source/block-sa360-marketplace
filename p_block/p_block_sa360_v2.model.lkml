connection: "@{CONNECTION_NAME}"

include: "/p_block/dashboards/*.dashboard.lookml"
include: "/p_block/explores/*.explore"

datagroup: block_sa360_v2_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: block_sa360_v2_default_datagroup


#### The Rollup tables need work - they do not rollup to a single line, and most of them don't because of multiple labels
#### The rest of the code is good and once we get a one-to-one match for the id's in the dimensional tables we should be good
#### ALSO campaign name is NOT unique to campaign ID
#### ALSO, ranking by modified date and selecting the most recent does NOT limit to unique ID's either, go figure