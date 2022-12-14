view: users {
  sql_table_name: `NextWave_Extract.Users`
    ;;
  drill_fields: [user_id]

  dimension: user_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.UserId ;;
  }

  dimension: app_zone_id {
    type: string
    sql: ${TABLE}.AppZoneId ;;
  }

  dimension: barcode {
    type: string
    sql: ${TABLE}.Barcode ;;
  }

  dimension: company_id {
    type: string
    sql: ${TABLE}.CompanyId ;;
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
    datatype: datetime
    sql: ${TABLE}.CreatedDate ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  dimension: mobile {
    type: string
    sql: ${TABLE}.Mobile ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.Phone ;;
  }

  dimension: profile_picture {
    type: string
    sql: ${TABLE}.ProfilePicture ;;
  }

  dimension: project_name {
    type: string
    sql: ${TABLE}.ProjectName ;;
  }

  dimension_group: time_stamp {
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
    sql: ${TABLE}.TimeStamp ;;
  }

  measure: count {
    type: count
    drill_fields: [user_id, project_name, name]
  }
}
