import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="olivas-accordion"
export default class extends Controller {

  static targets = ["symbol", "content"]
  connect() {

  }


  toggleAccordion(){
    if(this.symbolTarget.innerText === "+"){
      this.symbolTarget.innerText  = "-"
      this.contentTarget.classList.remove("d-none")
      this.contentTarget.classList.add("active-user-task_card")


    } else {
      this.symbolTarget.innerText  = "+"
      this.contentTarget.classList.add("d-none")
    }
  }
}
