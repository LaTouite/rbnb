import "bootstrap";
import "../plugins/flatpickr";
import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from '../plugins/init_mapbox';

// Mapbox
window.addEventListener("DOMContentLoaded", (event) => {
  initMapbox();
});


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

const initForm = () => {
  const participantsNb = document.querySelector("#booking_number_of_participants");
  const theDate = document.querySelector("#booking_date_time");
  const form = document.querySelector("#new_booking");
  if (form) {
    form.addEventListener("submit", (event) => {
  // Si les champs 'participants' & 'date' sont remplis et ...
      if ((participantsNb.value >= 1) && (theDate.value != '')) {
    // ... si l'utilisateur souhaite confirmer sa réservation :
        if (confirm("Souhaitez-vous confirmer votre réservation ?")) {
          alert("Votre réservation est bien prise en compte ! Merci :)")
    // ... si l'utilisateur ne souhaite pas confirmer sa réservation :
        } else {
          alert("La réservation n'est pas prise en compte :( ")
        }
      }
  // Si le champs 'participants' n'est pas complété :
      else if ((participantsNb.value < 1) && (theDate.value != '')) {
        alert("Veuillez renseigner le nombre de participants");
      }
  // Si le champs 'date & heure' n'est pas complété :
      else if ((participantsNb.value >= 1) && (theDate.value == '')) {
        alert("Veuillez renseigner la date et l'heure de votre réservation");
      }
  // Si aucun champs n'est renseigné :
      else {
        alert("Veuillez renseigner l'ensemble des champs obligatoires");
      }
    });
  }
}

if (document.querySelector('#booking_number_of_participants')) {
  console.log('iam here')
  initForm();
}
