({
    sum : function(component, event, helper) {

        var number1=component.find("x").get("v.value");
        var number2=component.find("y").get("v.value");
        
        console.log("Number 1 : "+number1 +" Number 2 : "+number2);
        // alert("Number 1 : "+number1 +" Number 2 : "+number2);

        var total=component.find("result");
        total.set("v.value",number1+number2);

    },

    sub : function(component, event, helper) {

        var number1=component.find("x").get("v.value");
        var number2=component.find("y").get("v.value");
        
        console.log("Number 1 : "+number1 +" Number 2 : "+number2);
        // alert("Number 1 : "+number1 +" Number 2 : "+number2);

        var total=component.find("result");
        total.set("v.value",number1-number2);

    },

    mul : function(component, event, helper) {

        var number1=component.find("x").get("v.value");
        var number2=component.find("y").get("v.value");
        
        console.log("Number 1 : "+number1 +" Number 2 : "+number2);
        // alert("Number 1 : "+number1 +" Number 2 : "+number2);

        var total=component.find("result");
        total.set("v.value",number1*number2);

    },
    div : function(component, event, helper) {

        var number1=component.find("x").get("v.value");
        var number2=component.find("y").get("v.value");
        
        console.log("Number 1 : "+number1 +" Number 2 : "+number2);
        // alert("Number 1 : "+number1 +" Number 2 : "+number2);

        var total=component.find("result");
        total.set("v.value",number1/number2);

    },

})