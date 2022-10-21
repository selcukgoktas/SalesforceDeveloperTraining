({
    init : function(component, event, helper) {


       var serverController = component.get("c.retrieve");

       // serverController.setParams();

       serverController.setCallback(this,function(response){
            
            console.log(response);
            var state= response.getState();
            

            if(state=='SUCCESS'){
                var responseVal = response.getReturnValue();
                component.set("v.accountList",responseVal);

            } else {
                var errorMessage = response.getError()[0].message;
                component.set("v.errorMsg", errorMessage);
            }

            

       });


       $A.enqueueAction(serverController);
        
    },
    publish : function(component, event, helper) {


        event.preventDefault();

        console.log('dataset');
        var selectedRow = event.currentTarget;
        var recordid = selectedRow.dataset.id;
       


        var recordId=recordid; 
        var recordDetails='no details';

    var payload = {
        recordId:recordId,
        recordData:recordDetails
    }
        component.find("mc").publish(payload);
        
    }
})
