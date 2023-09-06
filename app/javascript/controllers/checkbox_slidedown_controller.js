import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="checkbox-slidedown"
export default class extends Controller {
  static targets = ["parentDiv", "cardContainer"]
  connect() {
  }

  slidedown(event) {
    const childDiv = event.currentTarget.closest("[data-checkbox-slidedown-target='cardContainer']")
    const parentDiv = this.parentDivTarget


    childDiv.classList.remove();
    parentDiv.appendChild(childDiv);
    childDiv.classList.add("checkbox-opacity");

    this.adjustLayout();
  }divs

  adjustLayout() {
    const childDivs = this.cardContainerTargets;

    childDivs.forEach((div, index) => {
      div.style.order = index + 1;
    })
  }
}
