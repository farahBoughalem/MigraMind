import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="blur"
export default class extends Controller {
  static targets = ["posts"]
  connect() {
  }

  blur() {
    this.postsTarget.classList.add("opacity");
  }
}
