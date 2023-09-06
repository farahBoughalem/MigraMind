import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="new-post"
export default class extends Controller {
  static targets = ["addPost", "addEvent", "footer"]

  connect() {
  }

  reveal(event) {
    const type = event.currentTarget.dataset.newPostType
    if (type === "post") {
      this.addPostTarget.classList.toggle("d-none");
      this.footerTarget.classList.toggle("clickfooter");
    } else {
      this.addEventTarget.classList.toggle("d-none");
      this.footerTarget.classList.toggle("clickfooter");
    }

  };

}
