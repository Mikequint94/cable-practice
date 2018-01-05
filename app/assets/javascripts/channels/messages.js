App.messages = App.cable.subscriptions.create('MessagesChannel', {  
  received: function(data) {
    return document.getElementById('messages').append(this.renderMessage(data));
  },

  renderMessage: function(data) {
    let node = document.createElement("P")
    let bold = document.createElement("B");
    let t1 = document.createTextNode(`${data.user} :`);
    let t2 = document.createTextNode(` ${data.message}`);
    bold.appendChild(t1);
    node.appendChild(bold);
    node.appendChild(t2);
    
    return node;
  }
});