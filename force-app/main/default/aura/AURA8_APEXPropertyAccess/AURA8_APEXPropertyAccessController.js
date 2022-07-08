({
    accountListClientController : function(component, event, helper) {
        
        
        var serverController=component.get("c.accountlistServerController");
        
        component.set('v.columns', [
            {label: 'Account Name', fieldName: 'linkName', type: 'url',typeAttributes:{label:{fieldName:'Name'},target:'_blank'}},
            
            {label: 'Industry', fieldName: 'Industry', type: 'text'}
            
            
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
        
        
        
    },
    updateRowSelection : function(component, event, helper) {
        
        var selectedrowslist=[];
        
        selectedrowslist=component.find("accountTable").getSelectedRows();
        
        
        
        console.log(' component  : '+ JSON.stringify(selectedrowslist));
        
        component.set('v.selectedRows',JSON.stringify(selectedrowslist));

        var listofSelectionAttribute=component.get('v.selectedRows');

        console.log('listofSelectionAttribute : '+listofSelectionAttribute);
        
        
        /*
        
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
        
        */      
        
    }
})