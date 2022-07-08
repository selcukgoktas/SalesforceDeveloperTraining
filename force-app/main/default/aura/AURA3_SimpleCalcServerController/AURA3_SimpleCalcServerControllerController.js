({
    clientsum : function(component, event, helper) {

        var number1=component.get("v._x");
        var number2=component.get("v._y");
        
        

        var serverController=component.get("c.serversum");


        // json format : http://jsonviewer.stack.hu/
        serverController.setParams(

            {

                "n1":number1,
                "n2":number2


            }
        );

        serverController.setCallback(this,function(response){

            var state=response.getState();
            var responseValue=response.getReturnValue();
            if(state==="SUCCESS"){
                component.set("v.result",responseValue);
            } else {

                alert("Response Error. ");
            }

        });

        $A.enqueueAction(serverController);




    },
    clientsub : function(component, event, helper) {

        var number1=component.get("v._x");
        var number2=component.get("v._y");
        
        

        var serverController=component.get("c.serversub");


        // json format : http://jsonviewer.stack.hu/
        serverController.setParams(

            {

                "n1":number1,
                "n2":number2


            }
        );

        serverController.setCallback(this,function(response){

            var state=response.getState();
            var responseValue=response.getReturnValue();
            if(state==="SUCCESS"){
                component.set("v.result",responseValue);
            } else {

                alert("Response Error. ");
            }

        });

        $A.enqueueAction(serverController);




    },
    clientmul : function(component, event, helper) {

        var number1=component.get("v._x");
        var number2=component.get("v._y");
        
        

        var serverController=component.get("c.servermul");


        // json format : http://jsonviewer.stack.hu/
        serverController.setParams(

            {

                "n1":number1,
                "n2":number2


            }
        );

        serverController.setCallback(this,function(response){

            var state=response.getState();
            var responseValue=response.getReturnValue();
            if(state==="SUCCESS"){
                component.set("v.result",responseValue);
            } else {

                alert("Response Error. ");
            }

        });

        $A.enqueueAction(serverController);




    },
    clientdiv : function(component, event, helper) {

        var number1=component.get("v._x");
        var number2=component.get("v._y");
        
        

        var serverController=component.get("c.serverdiv");


        // json format : http://jsonviewer.stack.hu/
        serverController.setParams(

            {

                "n1":number1,
                "n2":number2


            }
        );

        serverController.setCallback(this,function(response){

            var state=response.getState();
            var responseValue=response.getReturnValue();
            if(state==="SUCCESS"){
                component.set("v.result",responseValue);
            } else {

                alert("Response Error. ");
            }

        });

        $A.enqueueAction(serverController);




    }
})