import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["confirme", "days"]

  connect() {
    console.log("Hello from the price controller")
  }

  calcul() {
    const startdate = document.getElementById("reservation_start_date")
    const startDateNumber = Date.parse(startdate.value)

    const enddate = document.getElementById("reservation_end_date")
    const endDateNumber = Date.parse(enddate.value)

    const days = (endDateNumber - startDateNumber)/(1000 * 3600 * 24)

    const price = parseInt(document.getElementById("prices").innerHTML)
    const prices = (price * days)
    console.log(prices)

    if (prices) {
      this.daysTarget.innerHTML = `Nights : ${days}`
      this.confirmeTarget.innerHTML = `Total price : ${prices}€`
    }
  }
}
