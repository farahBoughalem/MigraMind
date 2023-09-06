import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="olivas-accordion"
export default class extends Controller {

  static targets = ["symbol", "content", "card"]
  connect() {

  }


  toggleAccordion(event){
    const button = event.currentTarget
    const symbol = event.currentTarget.closest("[data-olivas-accordion-target='symbol']")
    const card = button.closest("[data-olivas-accordion-target='card']");
    const content = card.nextElementSibling;

    console.log(symbol)
    if(symbol.innerText === "+"){
      symbol.innerText  = "-"
      card.classList.remove("border-rounded-ten")
      card.classList.add("top-border-rounded-ten")
      content.classList.remove("d-none")
      content.classList.add("active-user-task_card")

    } else {
      symbol.innerText  = "+"
      card.classList.add("border-rounded-ten")
      card.classList.remove("top-border-rounded-ten")
      content.classList.add("d-none")
    }
  }
}
