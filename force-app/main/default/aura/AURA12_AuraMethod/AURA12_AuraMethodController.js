({
  AuraMethodRetrieveAccounts: function (component, event, helper) {
    var params = event.getParam("arguments");
    var actcallback;
    if (params) {
      actcallback = params.callback;
    }

    var serverController = component.get("c.getAccountsServerController");
    serverController.setCallback(this, function (response) {
      var records = response.getReturnValue();
      actcallback(records);
    });

    $A.enqueueAction(serverController);
  }
});