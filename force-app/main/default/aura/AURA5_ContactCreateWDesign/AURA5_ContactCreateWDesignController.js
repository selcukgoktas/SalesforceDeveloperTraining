({
    createContactClientController : function(component, event, helper) {

        var singleContactInfo=component.get("v.sContact");

        var serverController=component.get("c.createContactServer");

        serverController.setParams({
            'singleContact':singleContactInfo
        });

        serverController.setCallback(this,function(res){

            console.log(res);
            var state=res.getState();
            var resVal=res.getReturnValue();

            if(state==="SUCCESS"){

                component.set("v.contid",resVal);
                component.set("v.Message","Contact created by id : "+resVal);
                

            }else {

                var errorMsg=res.getError();
                component.set("v.Message","Contact Creation Error  : "+errorMsg[0].message);



            }




        });


        $A.enqueueAction(serverController);


    }
})