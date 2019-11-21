const chatrooms = document.querySelectorAll('.chatroom')

if(chatrooms){
  chatrooms.forEach( (chatroom) => {
    chatroom.addEventListener('click', async (event) => {
      chatrooms.forEach((chatroom) => { chatroom.classList.remove('chatroom-bg-blue') })
      chatroom.classList.add('chatroom-bg-blue')
      let id  = event.target.dataset.targetId
      let div_id = `#chat_room-${id}`
      await document.querySelectorAll('.chat_room_content').forEach((cr) => cr.style.display = "none")
      document.querySelector(div_id).style.display = "block"
    })
  })
}

