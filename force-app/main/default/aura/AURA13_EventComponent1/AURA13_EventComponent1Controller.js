({
  createClientController: function (component, event, helper) {
    var singleContactData = component.get("v.singleCont");

    var serverController = component.get("c.CreateServerController");
    var eventController = $A.get("e.c:AURA13_EVENT");

    serverController.setParams({
      singleContact: singleContactData
    });
    serverController.setCallback(this, (response) => {
      var state = response.getState();

      if (state === "SUCCESS") {
        var returnedval = response.getReturnValue();
        component.set("v.Contactid", returnedval);
        component.set("v.Message", "Contact is Created by id " + returnedval);

        eventController.setParams({
          createdcontactid: returnedval,
          isCreateNew: false
        });

        eventController.fire();
      } else {
        var errMsg = response.getError()[0].message;
        component.set("v.Message", errMsg);
      }
    });

    $A.enqueueAction(serverController);
  },
  showComponent: function (component, event, helper) {
    var visibilityStatus = event.getParam("isCreateNew");

    component.set("v.visibility", visibilityStatus);
  },
  init: function (component, event, helper) {
    var today = $A.localizationService.formatDate(new Date(), "DD-MM-YYYY");
    component.set("v.today", today);
  }
});