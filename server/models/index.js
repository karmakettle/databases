var db = require('../db');




module.exports = {
  // a function which produces all the messages
  messages: {
    get: function () {
        var queryString = "SELECT * from messages";
        db.connection.query(queryString);
    }, 
    // a function which can be used to insert a message into the database
    post: function (text) {
        var sql = "INSERT into messages (message_text) values ('" + text + "');"
        return post;
    } 
  },

  users: {
    // Ditto as above.
    get: function (callback) {
        var queryString = "SELECT * from users";
        db.connection.query(queryString, function(err, results){
          callback(results);
        });
    },
    post: function (params, callback) {
      var queryString = "INSERT INTO users (username) VALUES (?)";
      db.connection.query(queryString, params, function(err, results){
        callback(results);
      });
    }
  }
};

