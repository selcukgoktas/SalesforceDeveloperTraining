/**
 * @description       : 
 * @author            : Selçuk GÖKTAŞ
 * @group             : 
 * @last modified on  : 07-25-2022
 * @last modified by  : Selçuk GÖKTAŞ
**/
public with sharing class lwc15_LightningMessageChannelExample2 {
    public lwc15_LightningMessageChannelExample2() {

    }
    @AuraEnabled
    public static List<Account> retrieve(){
        List<Account> multiAcc=New List<Account>();

        try {
          multiAcc=[SELECT Id,Name,Phone,WebSite, CreatedDate FROM Account ORDER BY CreatedDate DESC LIMIT 10];  
        } catch (QueryException e) {
            throw new AuraHandledException(e.getMessage());
        }
        return multiAcc;
    }
}