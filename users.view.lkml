view: users {
  sql_table_name: demo_db.users ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: age {
    type: number
    sql: ${TABLE}.age ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
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

#   dimension: email {
#     type: string
#     sql: ${TABLE}.email ;;
#   }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.zip ;;
  }


# dimension: email {
#     type: string
#     sql:
#       CASE WHEN '{{ _user_attributes["city"] }}' = 'Los Angeles'
#         THEN ${TABLE}.email
#       ELSE
#         MD5(${TABLE}.email)
#       END ;;
#       }

  dimension: email {
    label: "{% if _explore._name == 'orders' %} Looker Registered Email Address {% else %} External Email Address {% endif %}"
    type: string
    sql: ${TABLE}.email ;;
  }


  dimension: nav {
    sql: ${id};;
    #label: " "
    html: <nav>
          <a href="https://localhost:9999/dashboards/3?state={{ _filters['users.state'] | url_encode }}">Map</a> |
          <a href="https://localhost:9999/dashboards/4?state={{ _filters['users.state'] | url_encode }}">Bar Chart</a> |
          <a href="https://localhost:9999/dashboards/5?state={{ _filters['users.state'] | url_encode }}">Pie Chart</a>
          </nav> ;;
    }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      last_name,
      first_name,
      events.count,
      orders.count,
      user_data.count
    ]
  }
}
