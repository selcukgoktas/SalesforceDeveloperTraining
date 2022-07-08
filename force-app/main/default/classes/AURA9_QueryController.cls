/**
 * @description       : AURA9 - Design Component and Pass Data into AURA
 * @author            : Selçuk GÖKTAŞ
 * @group             : 
 * @last modified on  : 07-04-2022
 * @last modified by  : Selçuk GÖKTAŞ
**/
public with sharing class AURA9_QueryController {
    public AURA9_QueryController() {

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