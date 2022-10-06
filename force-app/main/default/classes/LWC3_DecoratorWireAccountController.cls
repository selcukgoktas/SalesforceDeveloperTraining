/**
 * @description       : LWC03 - WIRE Decorator
 * @author            : Selçuk GÖKTAŞ
 * @group             : 
 * @last modified on  : 07-09-2022
 * @last modified by  : Selçuk GÖKTAŞ
**/
public with sharing class LWC3_DecoratorWireAccountController {
    public LWC3_DecoratorWireAccountController() {

    }

    @AuraEnabled(cacheable=true)
    public static List<Account> retrieveAccounts(){
        List<Account> multiAccount=New List<Account>();

        try {
            multiAccount=[SELECT id,Name,Type,Industry,CreatedDate FROM Account ORDER BY CreatedDate DESC LIMIT 10];
        } catch (QueryException e) {
            throw new AuraHandledException(e.getMessage());
        }
        return multiAccount;
    }
}