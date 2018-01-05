App.messages = App.cable.subscriptions.create('MessagesChannel', {  
  received: function(data) {
    // let messageSection = document.getElementById('messages');
    // messageSection.removeClass('hidden')
    return document.getElementById('messages').append(this.renderMessage(data));
  },

  renderMessage: function(data) {
    return data.user + " : " + data.message;
  }
});