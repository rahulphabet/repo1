view: vw_executive_ledger {
  # This line connects this specific LookML file to your BigQuery view
  sql_table_name: `rahulbatta-project.oracle_ledger_sync.vw_executive_ledger` ;;

  # --- DIMENSIONS (Attributes to slice data by) ---
  dimension: expense_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.expense_id ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: allocated_budget {
    type: number
    sql: ${TABLE}.allocated_budget ;;
  }

  dimension_group: expense_date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    sql: ${TABLE}.expense_date ;;
  }

  dimension: category_name {
    type: string
    sql: ${TABLE}.category_name ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.DEPT_NAME ;;
    description: "Business department for the ledger entry."
  }

  dimension: country_name {
    type: string
    map_layer_name: countries # Tells Looker to use a geographic map for this!
    sql: ${TABLE}.country_name ;;
  }

  dimension: region_name {
    type: string
    sql: ${TABLE}.region_name ;;
  }

  # --- MEASURES (Calculations) ---
  measure: total_spend {
    type: sum
    value_format_name: usd
    sql: ${amount} ;;
    description: "Total amount spent."
  }

  measure: total_budget {
    type: max
    value_format_name: usd
    sql: ${allocated_budget} ;;
    description: "Uses MAX to prevent fanning out budget sums across individual transactions."
  }
}
