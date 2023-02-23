/**
 * @description       : 
 * @author            : Selçuk GÖKTAŞ
 * @group             : 
 * @last modified on  : 02-24-2023
 * @last modified by  : Selçuk GÖKTAŞ
**/
public with sharing class lwc16AccountController {
    public lwc16AccountController() {

    }

    @AuraEnabled(cacheable=true)
    public static List<Account> retrieve(){

        List<Account> multiAcc = New List<Account>();
        try {
            multiAcc=[SELECT Id, Name, Phone, Industry FROM Account];
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
        return multiAcc;
    }
}