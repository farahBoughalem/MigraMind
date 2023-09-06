import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["description", "location", "detailsDiv", "locationDiv", "attendees", "attendeesDiv"]
  connect() {
    // console.log("Hello!!")
  }

  openDescription () {
    this.descriptionTarget.classList.remove("d-none")
    this.detailsDivTarget.classList.add("bold")
    this.locationDivTarget.classList.remove("bold")
    this.locationTarget.classList.add("d-none")
    this.attendeesDivTarget.classList.remove("bold")
    this.attendeesTarget.classList.add("d-none")
  }

  openLocation() {
    this.attendeesTarget.classList.add("d-none")
    this.locationTarget.classList.remove("d-none")
    this.locationDivTarget.classList.add("bold")
    this.detailsDivTarget.classList.remove("bold")
    this.descriptionTarget.classList.add("d-none")
    this.attendeesDivTarget.classList.remove("bold")
  }

  openAttendee() {
    this.attendeesTarget.classList.remove("d-none")
    this.attendeesDivTarget.classList.add("bold")
    this.locationDivTarget.classList.remove("bold")
    this.locationTarget.classList.add("d-none")
    this.detailsDivTarget.classList.remove("bold")
    this.descriptionTarget.classList.add("d-none")
  }
}
