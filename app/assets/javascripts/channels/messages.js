App.messages = App.cable.subscriptions.create('MessagesChannel', {  
  received: function(data) {
    return document.getElementById('messages').append(this.renderMessage(data));
  },

  renderMessage: function(data) {
    var node = document.createElement("P")
    var bold = document.createElement("B");
    var t1 = document.createTextNode(data.user +" : ");
    var t2 = document.createTextNode(data.message);
    bold.appendChild(t1);
    node.appendChild(bold);
    node.appendChild(t2);
    
    return node;
  }
});