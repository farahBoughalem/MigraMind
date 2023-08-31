import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="new-post"
export default class extends Controller {
  static targets = ["addPost", "newEvent"]

  connect() {
    console.log(this.newEventTarget)
  }

  reveal(event) {
    const type = event.currentTarget.dataset.newPostType
    if (type === "post") {
      this.addPostTarget.classList.toggle("d-none");
    } else {
      this.newEventTarget.classList.toggle("d-none");
    }

  };

}
