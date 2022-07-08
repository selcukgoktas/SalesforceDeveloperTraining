({
    retrieveContactsClientController : function(component, event, helper) {
    
           
            var serverController=component.get("c.retrieveContactsServerController");
    
            
            serverController.setCallback(this,function(res){
                var state=res.getState();
                var resVal=res.getReturnValue();
    
                var errMsg=res.getError();
    
                if(state==='SUCCESS'){

                    var values=[];

                    for(var key in resVal){
                        // console.log(key+' Contact : ' + resVal[key]);

                        values.push({
                            label:resVal[key],
                            value:key
                        });
                        

                    }

                    console.log('Values : '+ values);



                    component.set("v.contactOptions",values);
                  
                    
    
                }else{
                    component.set("v.Message",errMsg[0].message);
    
                }
    
    
    
            });
    
            $A.enqueueAction(serverController);
    
           
    
        }
})