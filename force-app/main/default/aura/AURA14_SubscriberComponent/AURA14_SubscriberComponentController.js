({
    handleMessage : function(component, message, helper) {


        if(message!=null && message.getParam("recordId")!=null){
            component.set("v.incomingMessage", message.getParam("recordId"));
            
        }
    }
})
