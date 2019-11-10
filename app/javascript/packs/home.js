// Make the page scroll to the log-in/sign-up section when clicking on the button
const startButton = document.getElementById('get-started');
const homeBanner = document.getElementById('home-banner');
const homeBannerHeight = homeBanner.scrollHeight;

const scrollToFormSection = () => {
  window.scroll({
    top: homeBannerHeight,
    behavior: 'smooth'
  });
};

startButton.addEventListener('click', scrollToFormSection);

// Make the forms appear
const brandButton = document.getElementById('button-brand');
const creatorButton = document.getElementById('button-creator');

const overlayLeft = document.querySelector('.overlay-left')
const overlayRight = document.querySelector('.overlay-right');

// Make the opposite panel move when clicking on a button
brandButton.addEventListener('click', () => {
    overlayRight.classList.toggle('right-panel-active');
    scrollToFormSection();
});

creatorButton.addEventListener('click', () => {
    overlayLeft.classList.toggle('left-panel-active');
    scrollToFormSection();
});

// Putting it back in place when clicking on the remaining part of the div
overlayRight.addEventListener('click', () => {
    overlayRight.classList.remove('right-panel-active');
    scrollToFormSection();
});

overlayLeft.addEventListener('click', () => {
    overlayLeft.classList.remove('left-panel-active');
    scrollToFormSection();
});
