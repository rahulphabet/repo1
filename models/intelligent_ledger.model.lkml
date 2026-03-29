# Define the database connection we set up earlier
connection: "bq_intel_ledger"

# Include all the view files in this project so the model can read them
include: "/views/**/*.view"

# --- EXPLORES ---
# Explores are the "blank canvases" where you build your dashboard charts.

# 1. The Main CFO Dashboard (Used for the Map and Bar Charts)
explore: vw_executive_ledger {
  label: "1 - Executive Ledger"
  description: "Real-time expense data streamed from Oracle, enriched for executive analysis."
}

# 2. The Predictive Trendline (Used for the AI Forecast Chart)
explore: vw_spend_forecast {
  label: "2 - Spend Forecast (AI)"
  description: "30-day budget deficit projection powered by BigQuery ML ARIMA_PLUS."
}
