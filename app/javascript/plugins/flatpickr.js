import flatpickr from "flatpickr";
import "flatpickr/dist/flatpickr.min.css";

flatpickr(".datepicker", {
  inline: true,
  enableTime: true,
  dateFormat: "Y-m-d H:i",
  minDate: "today"
})
