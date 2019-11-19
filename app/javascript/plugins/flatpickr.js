import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!

let datepicker = document.querySelector(".datepicker")

if (datepicker) {
  flatpickr(".datepicker", {
    mode: "range",
    altInput: true
    // minDate: Date.now()
  })
}
