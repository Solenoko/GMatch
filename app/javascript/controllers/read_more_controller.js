import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["short", "full"]

  connect() {
    console.log("ReadMoreController connected");
    this.expanded = false
  }

  toggle(event) {
    event.preventDefault()
    this.expanded = !this.expanded

    if (this.expanded) {
      this.shortTarget.style.display = "none"
      this.fullTarget.style.display = "inline"
      event.target.textContent = "Read less"
    } else {
      this.shortTarget.style.display = "inline"
      this.fullTarget.style.display = "none"
      event.target.textContent = "Read more"
    }
  }
}
