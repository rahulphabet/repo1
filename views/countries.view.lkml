view: countries {
  sql_table_name: `rahulbatta-project.oracle_ledger_sync.RB_INTEL_LEDGER_19C_COUNTRIES` ;;

  dimension: country_id {
    type: string
    sql: ${TABLE}.COUNTRY_ID ;;
  }
  dimension: country_name {
    type: string
    sql: ${TABLE}.COUNTRY_NAME ;;
  }
  dimension: datastream_metadata__source_timestamp {
    type: number
    sql: ${TABLE}.datastream_metadata.source_timestamp ;;
    group_label: "Datastream Metadata"
    group_item_label: "Source Timestamp"
  }
  dimension: datastream_metadata__uuid {
    type: string
    sql: ${TABLE}.datastream_metadata.uuid ;;
    group_label: "Datastream Metadata"
    group_item_label: "Uuid"
  }
  dimension: region_id {
    type: string
    sql: ${TABLE}.REGION_ID ;;
  }
  measure: count {
    type: count
    drill_fields: [country_name]
  }
}
