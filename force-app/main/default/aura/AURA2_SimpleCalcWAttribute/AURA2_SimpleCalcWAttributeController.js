({
    sum : function(component, event, helper) {
        var number1=component.get("v._x");
        var number2=component.get("v._y");

        component.set("v.result",number1+number2);



    },
    sub : function(component, event, helper) {
        var number1=component.get("v._x");
        var number2=component.get("v._y");

        component.set("v.result",number1-number2);
        


    },
    mul : function(component, event, helper) {
        var number1=component.get("v._x");
        var number2=component.get("v._y");

        component.set("v.result",number1*number2);
        


    },
    div : function(component, event, helper) {
        var number1=component.get("v._x");
        var number2=component.get("v._y");

        component.set("v.result",number1/number2);
        


    }
})