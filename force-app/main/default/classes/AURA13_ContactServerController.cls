/**
 * @description       :AURA13 Application Event
 * @author            : Selçuk GÖKTAŞ
 * @group             :
 * @last modified on  : 07-07-2022
 * @last modified by  : Selçuk GÖKTAŞ
 **/
public with sharing class AURA13_ContactServerController {
  public AURA13_ContactServerController() {
  }

  @AuraEnabled
  public static string CreateServerController(Contact singleContact) {
    try {
      insert singleContact;
    } catch (DmlException e) {
      throw new AuraHandledException(e.getMessage());
    }

    return singleContact.id;
  }

  @AuraEnabled
  public static List<Contact> retrieveServerController() {
    List<Contact> multiContact = new List<Contact>();
    try {
      multiContact = [
        SELECT id, Name, FirstName, LastName, Phone, Email, CreatedDate
        FROM Contact
        ORDER BY CreatedDate DESC
        LIMIT 10
      ];
    } catch (QueryException e) {
      throw new AuraHandledException(e.getMessage());
    }

    return multiContact;
  }
}