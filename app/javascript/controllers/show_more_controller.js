import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["item", "showMoreButton", "showLessButton"]
  static values = {
    limit: Number
  }

  connect() {
    console.log("ShowMoreController connected");
    this.showLimitedItems()
  }

  showLimitedItems() {
    this.itemTargets.forEach((el, index) => {
      el.style.setProperty("display", index < this.limitValue ? "flex" : "none", "important")
    })

    if (this.itemTargets.length <= this.limitValue) {
      this.showMoreButtonTarget.style.display = "none"
      this.showLessButtonTarget.style.display = "none"
    } else {
      this.showMoreButtonTarget.style.display = "inline-block"
      this.showLessButtonTarget.style.display = "none"
    }
  }

  showAll() {
    this.itemTargets.forEach((el) => {
      el.style.setProperty("display", "flex", "important")
    })
    this.showMoreButtonTarget.style.display = "none"
    this.showLessButtonTarget.style.display = "inline-block"
  }

  showLess() {
    this.showLimitedItems()
  }
}
