/**
 * @description       : AURA4 - Create Contact via Aura Component without any Design System
 * @author            : Selçuk GÖKTAŞ
 * @group             : 
 * @last modified on  : 07-01-2022
 * @last modified by  : Selçuk GÖKTAŞ
**/
public with sharing class AURA4_CreateContactServerController {
   
    

    @AuraEnabled
    public static string CreateContact(Contact singleContact ){
        try {
            insert singleContact;
            
        } catch (DmlException e) {
            // system.System.debug('ERROR :'+e.getMessage());
            throw new AuraHandledException(e.getMessage());
            
        }


        

        return singleContact.id;

    }
}