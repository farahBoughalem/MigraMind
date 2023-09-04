import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="olivas-accordion"
export default class extends Controller {

  static targets = ["symbol", "content", "card"]
  connect() {

  }


  toggleAccordion(){
    if(this.symbolTarget.innerText === "+"){
      this.symbolTarget.innerText  = "-"
      this.contentTarget.classList.remove("d-none")
      this.contentTarget.classList.add("active-user-task_card")
      this.cardTarget.classList.remove("border-rounded-ten")
      this.cardTarget.classList.add("top-border-rounded-ten")

    } else {
      this.symbolTarget.innerText  = "+"
      this.contentTarget.classList.add("d-none")
      this.cardTarget.classList.add("border-rounded-ten")
      this.cardTarget.classList.remove("top-border-rounded-ten")
    }
  }
}
