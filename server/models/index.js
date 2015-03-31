var db = require('../db');




module.exports = {
  // a function which produces all the messages
  messages: {
    get: function () {
    	db.connection.query("SELECT message_text from messages");
    }, 
    // a function which can be used to insert a message into the database
    post: function (text) {
    	var sql = "INSERT into messages (message_text) values ('" + text + "');"
    	return post;
    } 
  },

  users: {
    // Ditto as above.
    get: function () {},
    post: function () {}
  }
};

