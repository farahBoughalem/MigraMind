import { Controller } from "@hotwired/stimulus"
import Rails from "@rails/ujs"

// Connects to data-controller="checkbox"
export default class extends Controller {
  static targets = ["form"]

  submitForm() {
    Rails.fire(this.formTarget, 'submit')
  }
}
