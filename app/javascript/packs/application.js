import "bootstrap";
import "../plugins/flatpickr";
import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from '../plugins/init_mapbox';

const initPrice = () => {
  const participants_nb = document.querySelector("#booking_number_of_participants");
  const calcul = document.querySelector(".calcul");
  const price = document.querySelector(".price").innerText;
  const price_wo_currency = parseFloat(price.slice(0, -1));

  participants_nb.addEventListener("change", (event) => {
    const part = participants_nb.value;
    calcul.innerHTML = part * price_wo_currency;
  });
}

if (document.querySelector("#booking_number_of_participants")) {
  initPrice();
}

initMapbox();

const form = document.querySelector("#new_booking");
if (form) {
  form.addEventListener("submit", (event) => {
    alert("Votre réservation est bien prise en compte ! Merci !");
  });
}
