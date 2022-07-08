/**
 * @description       : AURA10 - Dynamic Record Show with Object Picklist
 * @author            : Selçuk GÖKTAŞ
 * @group             : 
 * @last modified on  : 07-04-2022
 * @last modified by  : Selçuk GÖKTAŞ
**/
public with sharing class AURA10_DynamicRecordsController {
    public AURA10_DynamicRecordsController() {

    }

    @AuraEnabled
    public static List<sObject> retrieveSC(String sobjName){
        List<sObject> sobjList=New List<sObject>();
        try {
            String q='SELECT id,Name FROM '+sobjName+' LIMIT 10';
            sobjList=database.query(q);
        } catch (QueryException e) {
            throw new AuraHandledException(e.getMessage());
        }

        return sobjList;
    }
}