/**
 * @description       : this class inherited sharing so if caller class respect sharing rules this is respecting also.
 * This is about sharing rules. If user has Field Level Security and Object Security Access this must be handled separately. 
 * To respect the Field and Object level security we will use Security.StripInAccessible class and methods.
 * 
 * 
 * @author            : Selçuk GÖKTAŞ
 * @group             : 
 * @last modified on  : 07-21-2022
 * @last modified by  : Selçuk GÖKTAŞ
**/
public inherited sharing class SECURITY1_OpportunityHelper {
    public SECURITY1_OpportunityHelper() {
        //constructor

    }

    public static List<Opportunity> retrieveOpportunity(){
        // return [SELECT Id,Name,Amount, CreatedDate,Credit_Card__c FROM Opportunity ORDER BY CreatedDate DESC LIMIT 10]; 
        // not respecting any security

        // return [SELECT Id,Name,Amount, CreatedDate,Credit_Card__c FROM Opportunity WITH SECURITY_ENFORCED ORDER BY CreatedDate DESC LIMIT 10 ]; 
         // this will totally close the doors. If user has ability to access some fields this will close all query.
         // if user cannot access field Credit_Card__c and if we add WITH SECURITY_ENFORCED statement into soql 
         // user cannot see any of the records because of Credit_Card__c

         // so we have to cut ( strip ) Credit_Card__c field from the soql and the rest of the data must be passed to the user.


         
         List<Opportunity> multiOpportunity = [SELECT Id,Name,Amount, CreatedDate,Credit_Card__c FROM Opportunity ORDER BY CreatedDate DESC LIMIT 10];

         SObjectAccessDecision sd = Security.stripInaccessible(AccessType.READABLE,multiOpportunity);

         return sd.getRecords();


    }

    
}