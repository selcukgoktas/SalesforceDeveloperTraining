/**
 * @description       : 
 * @author            : Selçuk GÖKTAŞ
 * @group             : 
 * @last modified on  : 07-09-2022
 * @last modified by  : Selçuk GÖKTAŞ
**/
public with sharing class LWC04_WireDataTableAccountController {
    public LWC04_WireDataTableAccountController() {

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


    @AuraEnabled
    public static List<Account> retrieveXAccounts(Integer NumofAcc){
        List<Account> multiAccount=New List<Account>();

        try {
            multiAccount=[SELECT id,Name,Type,Industry,CreatedDate FROM Account ORDER BY CreatedDate DESC LIMIT :NumofAcc];
        } catch (QueryException e) {
            throw new AuraHandledException(e.getMessage());
        }
        return multiAccount;
    }
}