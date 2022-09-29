/**
 * @description       :  This is really a simple scenario. Do not use in real production environment before contact with a consultant. 
 * This apex class is created for managing b2c customers without using person account system.
 * @author            : Selçuk GÖKTAŞ
 * @group             : 
 * @last modified on  : 09-29-2022
 * @last modified by  : Selçuk GÖKTAŞ
**/



public with sharing class BusinessToCustommer {
    public BusinessToCustommer() {

    }

    public void create(String FirstName, String LastName){

        String accountName = FirstName+' '+LastName;

        Account singleAcc = New Account(name=accountName);
        Insert singleAcc;

        Contact singleCon = New Contact(FirstName=FirstName, LastName=LastName,accountid=singleAcc.id);
        Insert singleCon;

    }
}
