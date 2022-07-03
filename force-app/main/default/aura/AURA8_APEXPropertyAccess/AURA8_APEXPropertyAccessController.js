({
    accountListClientController : function(component, event, helper) {
        
        
        var serverController=component.get("c.accountlistServerController");
        
        component.set('v.columns', [
            {label: 'Account Name', fieldName: 'linkName', type: 'url',typeAttributes:{label:{fieldName:'Name'},target:'_blank'}},
            
            {label: 'Industry', fieldName: 'Industry', type: 'test'}
            
            
        ]);
        
        
        serverController.setCallback(this,function(res){
            var state=res.getState();
            var resVal=res.getReturnValue();
            
            var errMsg=res.getError();
            var acclist=resVal.accountList;
            
            if(state==='SUCCESS'){
                
                
               for(var key in acclist){

               console.log(acclist[key].Name);
               console.log(acclist[key].Id);
               acclist[key].linkName='/'+acclist[key].Id;

               }
                
                
                component.set("v.apexClass",resVal);
                
                
                
                
            }else{
                component.set("v.Message",errMsg[0].message);
                
            }
            
            
            
        });
        
        $A.enqueueAction(serverController);
        
        
        
    }
})
