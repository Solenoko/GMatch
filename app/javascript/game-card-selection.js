
document.addEventListener('DOMContentLoaded', () => {
  const cards = document.querySelectorAll('.game-category-card');

  cards.forEach(card => {
    const image = card.querySelector('.game-image');

    card.addEventListener('click', () => {
      const isSelected = image.classList.contains('selected');

      document.querySelectorAll('.game-image').forEach(img => {
        img.classList.remove('selected');
      });

      if (!isSelected) {
        image.classList.add('selected');
      }
    });
  });
});
