view: vw_spend_forecast {
  sql_table_name: `RB_INTEL_LEDGER.vw_spend_forecast` ;;

  dimension: actual_spend {
    type: number
    sql: ${TABLE}.actual_spend ;;
  }
  dimension_group: expense {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.expense_date ;;
  }
  dimension: forecasted_spend {
    type: number
    sql: ${TABLE}.forecasted_spend ;;
  }
  measure: count {
    type: count
  }
}
