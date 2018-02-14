view: user_facts {
  derived_table: {
    sql: select u.id, count(distinct o.id) lto
            from users u
            left join orders o
            on u.id = o.user_id
            group by 1;;

  }
  view_label: "Users"
  dimension: lifetime_orders {
    sql: ${TABLE}.lto ;;
  }
  dimension: id {
    sql: ${TABLE}.id ;;
    primary_key: yes
  }
}
