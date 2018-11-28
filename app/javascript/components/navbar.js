function initUpdateNavbarOnScroll() {
  const navbar = document.querySelector('.navbar-wagon');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('hidden');
      } else {
        navbar.classList.remove('hidden');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };

function initUpdateNavbarOnScrollPages() {
  const navbar = document.querySelector('.pages');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= 10) {
        navbar.classList.add('hidden');
      } else {
        navbar.classList.remove('hidden');
      }
    });
  }
}

export { initUpdateNavbarOnScrollPages };
