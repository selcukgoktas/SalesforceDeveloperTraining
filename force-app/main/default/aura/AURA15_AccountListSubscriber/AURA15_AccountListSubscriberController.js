({
    handleMessage : function(component, message, helper) {
     
        console.log(message.getParam("recordId"));
        if(message!=null && message.getParam("recordId")!=null){

            component.set("v.recordId", message.getParam("recordId"));
           

        }

        
    }
})
