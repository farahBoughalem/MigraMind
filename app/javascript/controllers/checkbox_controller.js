import { Controller } from "@hotwired/stimulus"
import Rails from "@rails/ujs"

// Connects to data-controller="checkbox"
export default class extends Controller {
  static targets = ["form"]

  submitForm(event) {
    if (event.target.checked) {
      event.target.nextElementSibling.innerHTML = '<i class="fas fa-check-square"></i>'
    } else {
      event.target.nextElementSibling.innerHTML = '<i class="fas fa-square"></i>'
    }
    Rails.fire(this.formTarget, 'submit')
  }
}
