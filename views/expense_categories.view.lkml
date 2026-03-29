view: expense_categories {
  sql_table_name: `RB_INTEL_LEDGER.EXPENSE_CATEGORIES` ;;

  dimension: category_id {
    type: string
    sql: ${TABLE}.CATEGORY_ID ;;
  }
  dimension: category_name {
    type: string
    sql: ${TABLE}.CATEGORY_NAME ;;
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
  measure: count {
    type: count
    drill_fields: [category_name]
  }
}
