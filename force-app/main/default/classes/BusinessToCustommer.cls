/**
 * @description       :  This is really a simple scenario. Do not use in real production environment before contact with a consultant. 
 * This apex class is created for managing b2c customers without using person account system.
 * @author            : Selçuk GÖKTAŞ
 * @group             : 
 * @last modified on  : 09-30-2022
 * @last modified by  : Selçuk GÖKTAŞ
**/



public with sharing class BusinessToCustommer {
    public BusinessToCustommer() {

    }

    /*  V1 this is not a bulkified method...
    public void create(String FirstName, String LastName){

        String accountName = FirstName+' '+LastName;

        Account singleAcc = New Account(name=accountName);
        Insert singleAcc;

        Contact singleCon = New Contact(FirstName=FirstName, LastName=LastName,accountid=singleAcc.id);
        Insert singleCon;

    }
    */

    // V2 this can be used as a bulkified way for triggers etc.

    public void create(List<String> PersonName){
        list<Account> multiAcc = New List<Account>();
        for(String fullName:nameList){
             Account singleAcc = New Account(name=fullName);    
             multiAcc.add(singleAcc);    
         }
          insert multiAcc;
          list<Contact> multiCon = New List<Contact>();
         for(Account acc:multiAcc){
              String fullName= acc.Name;
              Integer numberofWords = fullName.split(' ').size();
             String LastName = fullName.split(' ').get(numberofWords-1);
             String FirstName = fullName.replace(LastName,'');  
             
            Contact singleCon = New Contact(FirstName=FirstName,LastName=LastName,accountid=acc.id); 
             // system.debug('apex class : ' + singleCon);
             
             multiCon.add(singleCon);            
         }
         insert multiCon;


    }
}
