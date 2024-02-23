/**
 * @description       : 
 * @author            : Selçuk GÖKTAŞ
 * @group             : 
 * @last modified on  : 02-23-2024
 * @last modified by  : Selçuk GÖKTAŞ
**/
public with sharing class schemaClass {
    public schemaClass() {

    }

    @AuraEnabled
    public static string updateRecord(String objectApiName,String recordId, String updateField, String Body){


        Schema.SObjectType targetType = Schema.getGlobalDescribe().get(objectApiName);
        sObject updateobject = targetType.newSObject();

        
        try {
        String QueryStr = 'SELECT ';
        Map<String, Schema.SObjectType> schemaMap = Schema.getGlobalDescribe();
        Map<String, Schema.SObjectField> fieldMap = schemaMap.get(objectApiName).getDescribe().fields.getMap();
        
        for(String fieldName : fieldMap.keyset() ){
            QueryStr+=fieldName +',';
        }
            QueryStr = QueryStr.substring(0, QueryStr.length() - 1);  // delete last ,
            QueryStr +=' FROM ' + objectApiName + ' WHERE Id = \'' + recordId + '\'';

            List<Sobject> records = Database.query(QueryStr);

            system.debug(records);

            if(!records.isEmpty()){
                system.debug('record found');

                for(String fieldName : fieldMap.keyset() ){
                    
                    String searchfieldtemplate = '{{'+fieldName.toUpperCase()+'}}';

                    if(Body.contains(searchfieldtemplate)){
                        // we found apiname inside the body

                        String replaceVal = (String)records[0].get(fieldName);

                        system.debug(searchfieldtemplate +'    is found in the template and converted to ' + replaceVal);

                        Body = Body.replace(searchfieldtemplate,replaceVal);
                    }
                }

            }

            
            updateobject.Id  = recordId;
            updateobject.put(updateField,Body);

            update updateobject;


        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }

        return updateobject.Id;
    }
}