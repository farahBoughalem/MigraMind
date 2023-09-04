import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["description", "location"]
  connect() {
    console.log("Hello!!")
  }

  openDescription () {
    this.descriptionTarget.classList.toggle("d-none")
    this.locationTarget.classList.add("d-none")
  }

  openLocation() {
    this.locationTarget.classList.toggle("d-none")
    this.descriptionTarget.classList.add("d-none")
  }
}
