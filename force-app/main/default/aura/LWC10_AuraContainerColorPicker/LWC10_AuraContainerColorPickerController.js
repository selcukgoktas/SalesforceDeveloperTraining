({
    applyColorClientController : function(component, event, helper) {
        console.log(event);
        component.set("v.colorCodeText", event.getParam('colorCodeVal'));

    }
})