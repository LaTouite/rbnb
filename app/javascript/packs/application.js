import "bootstrap";
import "../plugins/flatpickr";
import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from '../plugins/init_mapbox';

// Mapbox
initMapbox();

// calcul du prix en fonction du nb de participants
const initPrice = () => {
  const participantsNb = document.querySelector("#booking_number_of_participants");
  const calcul = document.querySelector(".calcul");
  const price = document.querySelector(".price").innerText;
  const priceWoCurrency = parseFloat(price.slice(0, -1));

  participantsNb.addEventListener("change", (event) => {
    const part = participantsNb.value;
    calcul.innerHTML = part * priceWoCurrency;
  });
}

if (document.querySelector("#booking_number_of_participants")) {
  initPrice();
}

// Bouton réserver avec popup
const form = document.querySelector("#new_booking");
const participantsNb = document.querySelector("#booking_number_of_participants");
const theDate = document.querySelector("#booking_date_time");

if (form) {
  form.addEventListener("submit", (event) => {
    if ((participantsNb.value >= 1) && (theDate.value != '')) {
      alert("Votre réservation est bien prise en compte ! Merci !");
    }
    else if ((participantsNb.value < 1) && (theDate.value != '')) {
      alert("Veuillez renseigner le nombre de participants");
    }
    else if ((participantsNb.value >= 1) && (theDate.value == '')) {
      alert("Veuillez renseigner la date et l'heure de votre réservation");
    }
    else {
      alert("Veuillez renseigner l'ensemble des champs obligatoires");
    }
  });
}
