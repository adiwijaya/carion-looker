view: facts_bikesharing {
  # # You can specify the table name if it's different from the view name:
  sql_table_name: dwh_bikesharing.facts_trips_daily_partition ;;
  #
  # # Define your dimensions and measures here, like this:
  dimension: trip_date {
    description: "trip_date"
    type: date
    sql: ${TABLE}.trip_date ;;
  }

  dimension: start_station_id {
    description: "start_station_id"
    type: number
    sql: ${TABLE}.start_station_id ;;
  }
  #
  dimension: total_trips {
    description: "total_trips"
    type: number
    sql: ${TABLE}.total_trips ;;
  }

  dimension: sum_duration_sec {
    description: "sum_duration_sec"
    type: number
    sql: ${TABLE}.sum_duration_sec ;;
  }

  dimension: avg_duration_sec {
    description: "avg_duration_sec"
    type: number
    sql: ${TABLE}.avg_duration_sec ;;
  }

  #
  # dimension_group: most_recent_purchase {
  #   description: "The date when each user last ordered"
  #   type: time
  #   timeframes: [date, week, month, year]
  #   sql: ${TABLE}.most_recent_purchase_at ;;
  # }
  #
  # measure: total_lifetime_orders {
  #   description: "Use this for counting lifetime orders across many users"
  #   type: sum
  #   sql: ${lifetime_orders} ;;
  # }
}

# view: facts_bikesharing {
#   # Or, you could make this view a derived table, like this:
#   derived_table: {
#     sql: SELECT
#         user_id as user_id
#         , COUNT(*) as lifetime_orders
#         , MAX(orders.created_at) as most_recent_purchase_at
#       FROM orders
#       GROUP BY user_id
#       ;;
#   }
#
#   # Define your dimensions and measures here, like this:
#   dimension: user_id {
#     description: "Unique ID for each user that has ordered"
#     type: number
#     sql: ${TABLE}.user_id ;;
#   }
#
#   dimension: lifetime_orders {
#     description: "The total number of orders for each user"
#     type: number
#     sql: ${TABLE}.lifetime_orders ;;
#   }
#
#   dimension_group: most_recent_purchase {
#     description: "The date when each user last ordered"
#     type: time
#     timeframes: [date, week, month, year]
#     sql: ${TABLE}.most_recent_purchase_at ;;
#   }
#
#   measure: total_lifetime_orders {
#     description: "Use this for counting lifetime orders across many users"
#     type: sum
#     sql: ${lifetime_orders} ;;
#   }
# }
