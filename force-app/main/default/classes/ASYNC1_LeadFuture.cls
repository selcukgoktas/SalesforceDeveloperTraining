/**
 * @description       : ASYNC1 Future method example.
 * @author            : Selçuk GÖKTAŞ
 * @group             : 
 * @last modified on  : 07-01-2022
 * @last modified by  : Selçuk GÖKTAŞ
**/
public with sharing class ASYNC1_LeadFuture {
    @future
    public static void methodName(Set<Id> exRecIds) {
        
        List<Lead> multiLead = [SELECT Id, LeadSource FROM Lead WHERE id IN :exRecIds];
        for (Lead rec : multiLead) {
            rec.LeadSource = 'Web';
        }
        
        update multiLead;
        
        
    }
}


// Comment out  ( VSCODE Short Code SHIFT+ALT+A or CTRL+K > CTRL+U ) with below codes and paste in anonymous window..

/* ASYNC1_LeadFuture LA = New ASYNC1_LeadFuture();

Map<Id, Lead> multiLead = New Map<Id,Lead>([SELECT id, Name FROM Lead]);

LA.updateRec(multiLead.keySet()); */