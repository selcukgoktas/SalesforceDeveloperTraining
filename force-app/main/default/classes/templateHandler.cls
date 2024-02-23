/**
 * @description       : 
 * @author            : Selçuk GÖKTAŞ
 * @group             : 
 * @last modified on  : 02-22-2024
 * @last modified by  : Selçuk GÖKTAŞ
**/
public with sharing class templateHandler {
    public templateHandler() {

    }


    @AuraEnabled(cacheable=true)
    public static List<DocumentTemplate__c> getTemplate(){

        List<DocumentTemplate__c> dc = new List<DocumentTemplate__c>();
        try {
            dc = [SELECT Id, Name, Body__c FROM DocumentTemplate__c];
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }

        return dc;
    }

    @AuraEnabled
    public static String createTemplate(String Name, String Body){

        DocumentTemplate__c dc = new DocumentTemplate__c(Name=Name,Body__c = Body);

        try {
            insert dc;
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }

        return dc.id;
    }


}