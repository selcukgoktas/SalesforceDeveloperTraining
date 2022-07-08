/**
 * @description       : AURA3 - Simple Calculator with Client Controller (JS) and Server Controller  (APEX)
 * @author            : Selçuk GÖKTAŞ
 * @group             : 
 * @last modified on  : 07-01-2022
 * @last modified by  : Selçuk GÖKTAŞ
**/
public class AURA3_SimpleCalcServerController {
   
    @AuraEnabled
    public static decimal serversum(decimal n1,decimal n2){
        system.debug('Sum : '+n1+'+'+n2);
        
        return n1+n2;
    }

    @AuraEnabled
    public static decimal serversub(decimal n1,decimal n2){
        
        return n1-n2;
    }

    @AuraEnabled
    public static decimal servermul(decimal n1,decimal n2){
        
        return n1*n2;
    }

    @AuraEnabled
    public static decimal serverdiv(decimal n1,decimal n2){
        
        return n1/n2;
    }


}