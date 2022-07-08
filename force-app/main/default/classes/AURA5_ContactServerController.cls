/**
 * @description       : AURA5 - Contact Creation with Lightning Design System and Salesforce Component Library
 * @author            : Selçuk GÖKTAŞ
 * @group             : 
 * @last modified on  : 07-01-2022
 * @last modified by  : Selçuk GÖKTAŞ
**/
public class AURA5_ContactServerController {
    

    @AuraEnabled
    public static string createContactServer(Contact singleContact){
        try {
            insert singleContact;

        } catch (DmlException e) {
            throw new AuraHandledException(e.getMessage());
           
            
        }

        return singleContact.id;
        
    }
}