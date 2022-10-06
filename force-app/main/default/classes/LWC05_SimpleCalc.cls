/**
 * @description       : LWC05 simple Calc
 * @author            : Selçuk GÖKTAŞ
 * @group             : 
 * @last modified on  : 07-09-2022
 * @last modified by  : Selçuk GÖKTAŞ
**/
public with sharing class LWC05_SimpleCalc {
    public LWC05_SimpleCalc() {

    }

    @AuraEnabled
    public static Decimal sum(Decimal x,Decimal y){
       return x+y;
    }

    @AuraEnabled
    public static Decimal sub(Decimal x,Decimal y){
       return x-y;
    }
    @AuraEnabled
    public static Decimal mul(Decimal x,Decimal y){
       return x*y;
    }
    @AuraEnabled
    public static Decimal div(Decimal x,Decimal y){
       return x/y;
    }

}