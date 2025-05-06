import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["content", "button", "icon"];

  toggle() {
    this.contentTarget.classList.toggle("hidden");

    this.buttonTarget.classList.toggle("clicked");

    if (this.contentTarget.classList.contains("hidden")) {
      this.iconTarget.classList.replace("fa-chevron-up", "fa-chevron-down");
    } else {
      this.iconTarget.classList.replace("fa-chevron-down", "fa-chevron-up");
    }
  }
}
