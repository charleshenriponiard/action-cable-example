//= require cable
//= require_self
//= require_tree .

this.App = {};
console.log(this.App)

App.cable = ActionCable.createConsumer();
