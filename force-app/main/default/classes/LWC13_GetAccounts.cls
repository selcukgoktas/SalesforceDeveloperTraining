/**
 * @description       : 
 * @author            : Selçuk GÖKTAŞ
 * @group             : 
 * @last modified on  : 07-23-2022
 * @last modified by  : Selçuk GÖKTAŞ
**/
public with sharing class LWC13_GetAccounts {
    public LWC13_GetAccounts() {

    }
    @AuraEnabled(cacheable=true)
    public static List<Account> retrieve(){
        List<Account> multiAcc = new List<Account>();
        try {
            multiAcc=[SELECT Id,Name,Phone,WebSite,CreatedDate FROM Account ORDER BY CreatedDate DESC LIMIT 20];
        } catch (QueryException e) {
            throw new AuraHandledException(e.getMessage());
        }

        return multiAcc;
    }
}