/**
 * @description       : ASYNC2 Queueable Class Example
 * @author            : Selçuk GÖKTAŞ
 * @group             : 
 * @last modified on  : 07-01-2022
 * @last modified by  : Selçuk GÖKTAŞ
**/
public with sharing class ASYNC2_LeadQueueable implements Queueable {

    public void execute(QueueableContext context){
          List<Lead> multiLead = [SELECT Id, LeadSource FROM Lead];
        
        for (Lead single:multiLead){
            single.LeadSource='Web';
        }
        update multiLead;
    }
}

// Comment out  ( VSCODE Short Code SHIFT+ALT+A or CTRL+K > CTRL+U ) with below codes and paste in anonymous window..

/* ASYNC2_LeadQueueable LQ = New ASYNC2_LeadQueueable();


ID JobId=System.enqueueJob(LQ); */