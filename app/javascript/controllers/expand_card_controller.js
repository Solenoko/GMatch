import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["details"]

  toggle(event) {
    const card = this.element;
    const details = this.detailsTarget;

    card.classList.toggle("expanded-card");

    if (details.classList.contains("expanded")) {
      details.classList.remove("expanded");
      details.style.maxHeight = "0";
    } else {
      details.classList.add("expanded");
      details.style.maxHeight = details.scrollHeight + "px";
    }
  }
  stopPropagation(event) {
  event.stopPropagation();
  }
}
