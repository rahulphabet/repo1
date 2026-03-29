view: employees {
  sql_table_name: `RB_INTEL_LEDGER.EMPLOYEES` ;;

  dimension: country_id {
    type: string
    sql: ${TABLE}.COUNTRY_ID ;;
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
  dimension: dept_id {
    type: string
    sql: ${TABLE}.DEPT_ID ;;
  }
  dimension: emp_id {
    type: string
    sql: ${TABLE}.EMP_ID ;;
  }
  dimension: first_name {
    type: string
    sql: ${TABLE}.FIRST_NAME ;;
  }
  dimension: last_name {
    type: string
    sql: ${TABLE}.LAST_NAME ;;
  }
  measure: count {
    type: count
    drill_fields: [last_name, first_name]
  }
}
