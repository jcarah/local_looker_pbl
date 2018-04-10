view: orders {
  sql_table_name: demo_db.orders ;;


  dimension: email {
    label: "{% if _model._name == 'thelook' %} Looker Registered Email Address {% else %} External Email Address {% endif %}"
    type: string
    sql: ${TABLE}.email ;;
  }
  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: user_id {
    label: "THIS IS A USER ID"
    type: number
    sql: ${TABLE}.user_id/7 ;;
    # removed legacy decimal reference and added value_format_name
#     value_format_name: percent_2
    value_format: "$%.2f"
    description: "What you are looking at here is a user id"
  }



  dimension:  asd{
    sql: coalesce({% if user_id._in_query %}'hi',{% endif %} null)
    ;;

  }

  measure: count {
    type: count
    drill_fields: [id, users.last_name, users.first_name, users.id, order_items.count]
  }
}
