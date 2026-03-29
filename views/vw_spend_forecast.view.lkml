view: vw_spend_forecast {
  sql_table_name: `rahulbatta-project.RB_INTEL_LEDGER.vw_spend_forecast` ;;

  # --- DIMENSIONS ---
  dimension_group: expense_date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    sql: ${TABLE}.expense_date ;;
  }

  # --- MEASURES (This is what was missing!) ---
  measure: actual_spend {
    type: sum
    value_format_name: usd
    sql: ${TABLE}.actual_spend ;;
    description: "The historical daily spend."
  }

  measure: forecasted_spend {
    type: sum
    value_format_name: usd
    sql: ${TABLE}.forecasted_spend ;;
    description: "The 30-day AI projection of future spend."
  }
}
