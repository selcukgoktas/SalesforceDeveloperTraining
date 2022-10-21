({
    publish : function(component, event, helper) {
        event.preventDefault();
        var message = component.get("v.helloMsg");

        var payload={
            recordId:message
        }

        component.find("mc").publish(payload);

        console.log(payload);
        console.log(component.find("mc"));
    }
})
