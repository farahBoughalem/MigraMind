import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="show-comments"
export default class extends Controller {
  static targets = ["comments", "form", "card", "sum"]
  connect() {
    // console.log(parseInt(this.sumTarget.innerHTML))
  }
  show() {
    // console.log("Hi")
    this.commentsTarget.classList.toggle("d-none");
  }
  add(event) {
    event.preventDefault()
    const url = this.formTarget.action
    const existingContent = this.commentsTarget.innerHTML;
    fetch(url, {
      method: "POST",
      headers: { "Accept": "text/plain" },
      body: new FormData(this.formTarget)
    })
    .then(response => response.text())
    .then((data) => {
      const updatedContent = existingContent + data;
      this.commentsTarget.innerHTML = updatedContent;
      this.sumTarget.innerHTML = parseInt(this.sumTarget.innerHTML) + 1
    })
  }
}
