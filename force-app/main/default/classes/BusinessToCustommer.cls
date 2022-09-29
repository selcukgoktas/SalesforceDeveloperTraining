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
        
        List<Account> multiAcc = New List<Account>();
        List<Contact> multiCon  = New List<Contact>();

        for(String fullName:PersonName){
           Account singleAcc = New Account(name=fullName);
           multiAcc.add(singleAcc);
         }

        insert multiAcc;

        for(Account acc:multiAcc){
            String fullName = acc.name;
            Integer NameWords=fullName.split(' ').size();
            Integer LastItem=NameWords-1;
            String Lname=fullName.split(' ').get(LastItem);
            String Fname=fullName.replace(Lname,'');

            Account singleAcc = New Account(name=fullName);

            Contact singleCon = New Contact(FirstName=Fname,LastName=Lname,accountid=acc.id);

           
            multiCon.add(singleCon);

        }


        insert multiCon;



    }
}
