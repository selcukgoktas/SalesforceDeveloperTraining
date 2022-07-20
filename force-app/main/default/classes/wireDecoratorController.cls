/**
 * @description       : 
 * @author            : Selçuk GÖKTAŞ
 * @group             : 
 * @last modified on  : 07-18-2022
 * @last modified by  : Selçuk GÖKTAŞ
**/
public with sharing class wireDecoratorController {   //  with sharing = System MODE... 
    public wireDecoratorController() {

        //constructor
    }

    @AuraEnabled(cacheable=true)   // LWC javascript imperative  (cacheable=true) must be cancelled.
    public static List<Account> getAccountRecords(){
        list<Account> multiAccount=New List<Account>();
        try {
            multiAccount=[Select id,Name,CreatedDate FROM Account ORDER BY CreatedDate DESC LIMIT 10];
            
        } catch (QueryException e) {
            throw new AuraHandledException(e.getMessage());
        }

        return multiAccount;
    }


    
}
