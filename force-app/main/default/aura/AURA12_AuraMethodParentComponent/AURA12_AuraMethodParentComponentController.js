({
  ParentCompClientController: function (component, event, helper) {
    var childComponent = component.find("childComponent");

    childComponent.AuraMethodRetrieveAccounts(function (result) {
      component.set("v.accountRecords", result);
    });
  }
});