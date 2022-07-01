/**
 * @description       : ASYNC4 Lead Batch Class
 * @author            : Selçuk GÖKTAŞ
 * @group             : 
 * @last modified on  : 07-01-2022
 * @last modified by  : Selçuk GÖKTAŞ
**/
public with sharing class ASYNC3_LeadBatch implements Database.Batchable<SObject> { 

    // Start
    public Database.QueryLocator start(Database.BatchableContext BC){
       return Database.getQueryLocator('SELECT Id FROM Lead');
       }
    
     // execute
    public void execute(Database.BatchableContext BC, List<Lead> scope){
       for(Lead s:scope){
       // batch actions
       s.LeadSource='Web';
         System.debug(s.id + 'Ids record is processed now...');
       }
    }
    
    // finish
    public void finish(Database.BatchableContext BC){
       System.debug('Batch Finished');
    // You can call another Batch Class also when this batch is finished other will start.
    }
    
    }


    // Comment out  ( VSCODE Short Code SHIFT+ALT+A or CTRL+K > CTRL+U ) with below codes and paste in anonymous window..

/*     ASYNC3_LeadBatch LB= new ASYNC3_LeadBatch();

// batchsize 0-2000 default 200 
Database.executeBatch(LB,100); // 5 is batch size. Everytime this size executed.

// or Schedule Batch ( 30 minutes from now )
String CronID=System.scheduleBatch(LB,'Scheduled Lead Batch',30); */