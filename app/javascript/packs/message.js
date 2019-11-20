// const message = document.querySelector('.container-chatroom')
// const messenger = document.querySelector('.wrapper-messenger')

//   const showMessage = () => {
//   messenger.addEventListener('click');
//   console.log(allMessages)
//   document.insertAdjacentHTML('afterbegin',message)};
//   // -------------------- //

// const chatRoom = document.querySelector('.data-to-replace').innerHTML
// const messenger = document.querySelector('.data-replaced')

// const button = document.getElementById('super-test')

// button.addEventListener('click', (event) => {
//   messenger.innerHTML = `<%= ${chatRoom} %>`
// })


const chatrooms = document.querySelectorAll('.chatroom')
if(chatrooms){
  chatrooms.forEach( (chatroom) => {
  chatroom.addEventListener('click', async (event) => {
      let id  = event.target.dataset.targetId
      let div_id = `#chat_room-${id}`
      await document.querySelectorAll('.chat_room_content').forEach((cr) =>  cr.style.display = "none"  )
      document.querySelector(div_id).style.display = "block"

  })
})
 }

