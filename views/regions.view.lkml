view: regions {
sql_table_name: `rahulbatta-project.oracle_ledger_sync.RB_INTEL_LEDGER_19C_REGIONS` ;;

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
  dimension: description {
    type: string
    sql: ${TABLE}.DESCRIPTION ;;
  }
  dimension: region_id {
    type: string
    sql: ${TABLE}.REGION_ID ;;
  }
  dimension: region_name {
    type: string
    sql: ${TABLE}.REGION_NAME ;;
  }
  measure: count {
    type: count
    drill_fields: [region_name]
  }
}
