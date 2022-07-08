({
    init : function(component, event, helper) {

        var serverController=component.get("c.retrieveSC");
        var objectN=component.get("v.ObjectName");


        serverController.setParams({
            'sobjName':objectN
        });

        component.set('v.columns', [
            {label: 'Account Name', fieldName: 'linkName', type: 'url',typeAttributes:{label:{fieldName:'Name'},target:'_blank'}},
            
        ]);
        



        serverController.setCallback(this,function(res){
            var state=res.getState();
            var resVal=res.getReturnValue();

            var errMsg=res.getError();

            if(state==='SUCCESS'){

                for(var key in resVal){
                    
                   
                    resVal[key].linkName='/'+resVal[key].Id;
                    
                }
                
                
                component.set("v.data",resVal);
                
                
                

            }else{
                component.set("v.Message",errMsg[0].message);

            }



        });

        $A.enqueueAction(serverController);




    }

  
})