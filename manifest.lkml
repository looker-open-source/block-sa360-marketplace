project_name: "block_sa360"

local_dependency: {
  project: "@{CONFIG_PROJECT_NAME}"
  override_constant: SA_360_SCHEMA {
    value: "@{SA_360_SCHEMA}"
  }
  override_constant: ADVERTISER_ID {
    value: "@{ADVERTISER_ID}"
  }
}

constant: CONFIG_PROJECT_NAME {
  value: "block-sa360-config"
  export: override_required
}

constant: CONNECTION_NAME {
  value: "input_connection_name"
  export: override_required
}

constant: SA_360_SCHEMA {
  value: "input_schema_here"
  export: override_required
}

constant: ADVERTISER_ID {
  value: "input_advertiser_id"
  export: override_required
}
