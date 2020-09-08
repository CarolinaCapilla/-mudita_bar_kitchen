function allergenToggle() {
  const allergenCards = document.querySelectorAll('.category-choice');
  allergenCards.forEach(item =>{
    item.addEventListener('click', () => {
      item.classList.toggle('active');
    });
  });
};

export {allergenToggle}