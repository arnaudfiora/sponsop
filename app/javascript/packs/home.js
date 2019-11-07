console.log('home javascript initialised')

const brandButton = document.getElementById('btnBrand');
const creatorButton = document.getElementById('btnCreator');
const overlayLeft = document.querySelector('.overlay-left')
const overlayRight = document.querySelector('.overlay-right')

brandButton.addEventListener('click', () => {
    overlayLeft.classList.remove('left-panel-active');
    overlayRight.classList.add('right-panel-active');
});

creatorButton.addEventListener('click', () => {
    overlayRight.classList.remove('right-panel-active');
    overlayLeft.classList.add('left-panel-active');
});
