import Typed from "typed.js"

// Make the page scroll to the log-in/sign-up section when clicking on the button
const homePageFunctions = () => {
  const navbar = document.querySelector('.navbar-sponsop')
  const homeBanner = document.getElementById('home-banner');
  const learnMoreButton = document.getElementById('learn-more-button');

  if (!homeBanner || !learnMoreButton) {
    return null;
  };

  const homeBannerHeight = homeBanner.scrollHeight;
  const navbarHeight = navbar.scrollHeight;
  const bannerSize = homeBannerHeight - navbarHeight

  console.log('hello from home.js')

  const scrollToFirstSection = () => {
    window.scroll({
      top: bannerSize,
      behavior: 'smooth'
    });
  };

  learnMoreButton.addEventListener('click', scrollToFirstSection);
  // -------------------- //

  // Make the navbar transparent on loading and then appearing after banner
  window.onload = (event) => {
    navbar.classList.add('transparent');
  };

  window.addEventListener('scroll', (event) => {
    if (window.scrollY < 730) {
      navbar.classList.add('transparent');
    } else {
      navbar.classList.remove('transparent');
    }
  });
  // -------------------- //

  // Adding the scrolling text in the banner
  var typed = new Typed('.type', {
    strings: ["SponsOp"],
    typeSpeed: 130,
    backSpeed: 35,
    backDelay: 1000,
    loop: true,
  });
  // -------------------- //
}

homePageFunctions();

// ---------------- //
