import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["details", "item"]

  toggle(event) {
    const card = this.element;
    const details = this.detailsTarget;

    const expandedCards = document.querySelectorAll('.expanded-card');
    expandedCards.forEach((expandedCard) => {
      if (expandedCard !== card) {
        expandedCard.classList.remove('expanded-card');
        const detailsToClose = expandedCard.querySelector('.card-details');
        detailsToClose.classList.remove('expanded');
        detailsToClose.style.maxHeight = "0";
      }
    });

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
