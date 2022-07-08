({
    createContactClient : function(component, event, helper) {

        var singleContact = component.get("v.Scontact");

       // console.log(singleContact.FirstName);
       // console.log(singleContact.LastName);


       var serverController = component.get("c.CreateContact"); // APEX Method Name...

       // 'singleContact' is a parameter in the CreateContact method in the AURA4_CreateContactServerController class
       serverController.setParams(
        {
            'singleContact':singleContact   
        }
       );

       serverController.setCallback(this,function(response){
        var state=response.getState();
        var responseValue=response.getReturnValue();

        if(state==='SUCCESS'){
            component.set("v.createdContactId",' Contact Created by id '+responseValue);

        } else {
            var errorMsg=response.getError();
            console.log(errorMsg[0]);

            component.set("v.createdContactId",errorMsg[0].message);

        }


       });

    
       $A.enqueueAction(serverController);

    }
})