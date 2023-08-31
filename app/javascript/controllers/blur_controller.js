import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="blur"
export default class extends Controller {
  static targets = ["posts", "post"]
  connect() {
  }

  blur() {
    this.postsTarget.classList.toggle("opacity");
    this.postTarget.classList.toggle("opacity");
  }
}
