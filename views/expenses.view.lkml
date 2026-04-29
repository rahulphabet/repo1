view: expenses {
  sql_table_name: `rahulbatta-project.oracle_ledger_sync.RB_INTEL_LEDGER_19C_EXPENSES` ;;

  dimension: amount {
    type: number
    sql: ${TABLE}.AMOUNT ;;
  }
  dimension: category_id {
    type: string
    sql: ${TABLE}.CATEGORY_ID ;;
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
  dimension: description {
    type: string
    sql: ${TABLE}.DESCRIPTION ;;
  }
  dimension: emp_id {
    type: string
    sql: ${TABLE}.EMP_ID ;;
  }
  dimension_group: expense {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.EXPENSE_DATE ;;
  }
  dimension: expense_id {
    type: string
    sql: ${TABLE}.EXPENSE_ID ;;
  }
  dimension: merchant_name {
    type: string
    sql: ${TABLE}.MERCHANT_NAME ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
  }
  measure: count {
    type: count
    drill_fields: [merchant_name]
  }
}
