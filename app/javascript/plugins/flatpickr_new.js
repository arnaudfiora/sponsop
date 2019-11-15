import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!

let datepicker = document.querySelector(".datepicker")

if (datepicker) {
  flatpickr(".datepicker", {
    mode: "range",
    altInput: true,
    minDate: Date.now()
  })
}

 datepicker = document.querySelector(".datepicker_edit")

if (datepicker) {
 const previousDates = JSON.parse(datepicker.dataset.defaultDates)
 console.log(previousDates)
  flatpickr(".datepicker_edit", {
    mode: "range",
    altInput: true,
    defaultDate: previousDates,
    minDate: Date.now()
  })
}
