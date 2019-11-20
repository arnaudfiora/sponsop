const dashboard_add_animation = () => {

  const element = document.querySelector(".dashboard-title-button");

  if (!element) {
    return null;
  };

  element.addEventListener("mouseenter", event => {
    element.classList.add('animated', 'jello');
  });

  element.addEventListener('animationend', function() {
    element.classList.remove('animated', 'jello');
  });
};

dashboard_add_animation()
