view: regions {
  sql_table_name: `RB_INTEL_LEDGER.REGIONS` ;;
  drill_fields: [region_id]

  dimension: region_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.REGION_ID ;;
  }
  dimension: continent {
    type: string
    sql: ${TABLE}.CONTINENT ;;
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
  dimension: region_name {
    type: string
    sql: ${TABLE}.REGION_NAME ;;
  }
  measure: count {
    type: count
    drill_fields: [region_id, region_name, countries.count]
  }
}
