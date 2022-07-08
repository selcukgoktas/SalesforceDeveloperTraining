({
    createContactClientController : function(component, event, helper) {

        var singleCont=component.get("v.singleContact");
        var serverController=component.get("c.createContactServer");

        serverController.setParams({
            'singleContact':singleCont
        });
        serverController.setCallback(this,function(res){
            var state=res.getState();
            var resVal=res.getReturnValue();

            var errMsg=res.getError();

            if(state==='SUCCESS'){
                component.set("v.contid",resVal);
                component.set("v.Message","Contact created by id : "+resVal);
                

            }else{
                component.set("v.Message",errMsg[0].message);

            }



        });

        $A.enqueueAction(serverController);

        $A.enqueueAction(component.get('c.listcontactCliendController'));

    },

    listcontactCliendController : function(component, event, helper) {

        var serverController=component.get("c.listofContact");

        serverController.setCallback(this,function(res){

            var state=res.getState();
            var listCont=res.getReturnValue();
            var errMsg=res.getError();

            if(state==='SUCCESS'){
                component.set("v.contactList",listCont);
                // console.log('listCont : ',listCont);

            }else{
                component.set("v.listMessage",errMsg[0].message);


            }


        });

        $A.enqueueAction(serverController);

    }





})