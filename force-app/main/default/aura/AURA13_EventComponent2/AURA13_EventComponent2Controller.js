({
  retrieveClientController: function (component, event, helper) {
    component.set("v.columns", [
      {
        label: "Name",
        fieldName: "linkName",
        type: "url",
        typeAttributes: { label: { fieldName: "Name" }, target: "_blank" }
      },

      { label: "Phone", fieldName: "Phone", type: "text" },
      { label: "Email", fieldName: "Email", type: "text" },
      { label: "Title", fieldName: "Title", type: "text" }
    ]);

    var serverController = component.get("c.retrieveServerController");

    serverController.setCallback(this, (res) => {
      var state = res.getState();

      /* state === "SUCCESS"
        ? component.set("v.multiContact", res.getReturnValue())
        : component.set("v.Message", res.getError()[0].message); */

      if (state === "SUCCESS") {
        var records = res.getReturnValue();
        records.forEach((record) => {
          record.linkName = "/" + record.Id;
        });

        component.set("v.multiContact", res.getReturnValue());
      } else {
        component.set("v.Message", res.getError()[0].message);
      }
    });

    $A.enqueueAction(serverController);
    console.log("Contact list");

    console.log(component.get("v.multiContact"));
  },

  createNewContact: function (component, event, helper) {
    var eventController = $A.get("e.c:AURA13_EVENT");
    eventController.setParams({ isCreateNew: true });
    eventController.fire();
  }
});