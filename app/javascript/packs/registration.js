// Make the forms appear
const brandButton = document.getElementById('button-brand');
const creatorButton = document.getElementById('button-creator');

const overlayLeft = document.querySelector('.overlay-left')
const overlayRight = document.querySelector('.overlay-right');

// Make the opposite panel move when clicking on a button
brandButton.addEventListener('click', () => {
    overlayRight.classList.toggle('right-panel-active');
});

creatorButton.addEventListener('click', () => {
    overlayLeft.classList.toggle('left-panel-active');
});

// Putting it back in place when clicking on the remaining part of the div
overlayRight.addEventListener('click', () => {
    overlayRight.classList.remove('right-panel-active');
});

overlayLeft.addEventListener('click', () => {
    overlayLeft.classList.remove('left-panel-active');
});
