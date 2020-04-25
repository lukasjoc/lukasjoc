"use-strict"

get_current_age = (bdate) ->
  bdate = new Date(bdate)
  now = new Date()
  age = Math.floor((now-bdate)/31557600000)
  return age

age_div = document.querySelector(".current-age")
age_div.innerHTML = get_current_age("2000/12/13")

get_current_year = () ->
  now = new Date()
  return now.getFullYear()

year_div = document.querySelector(".current-year")
year_div.innerHTML = get_current_year()
