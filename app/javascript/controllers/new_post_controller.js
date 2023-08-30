import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="new-post"
export default class extends Controller {
  static targets = ["form"]

  connect() {
  }

  reveal() {
    this.formTarget.classList.toggle("d-none");
  };
}
