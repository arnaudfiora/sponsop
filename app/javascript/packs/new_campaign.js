const slider = () => {

  const nextButton = document.querySelector('#next')
  console.log(nextButton)

  const boxes = document.querySelectorAll('.channel-form-content.create-campaign')

  console.log(boxes)

  const showSlide = (e) => {
    console.log(e)
    boxes.forEach((box) => {
      console.log(box)
      box.classList.toggle('active')
    })

  }

  nextButton.addEventListener('click', showSlide)
}

export { slider }
