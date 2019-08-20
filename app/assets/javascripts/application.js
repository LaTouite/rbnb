//= require rails-ujs
//= require_tree .
  const participants_nb = document.querySelector("#booking_number_of_participants");
  const calcul = document.querySelector(".calcul");
  const price = document.querySelector(".price").innerText;
  const price_wo_currency = parseFloat(price.slice(0, -1));

participants_nb.addEventListener("change", (event) => {
  const part = participants_nb.value;
  calcul.innerHTML = part * price_wo_currency;
  // calcul.insertAdjacentHTML("afterbegin", part * price_wo_currency);
});
