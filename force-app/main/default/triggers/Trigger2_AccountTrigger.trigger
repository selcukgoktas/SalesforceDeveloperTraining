/**
 * @description       : Google Interview Question - Account Trigger. What will happen when we create an account  ?
 * @author            : Selçuk GÖKTAŞ
 * @group             : 
 * @last modified on  : 07-17-2022
 * @last modified by  : Selçuk GÖKTAŞ
**/
trigger Trigger2_AccountTrigger on Account (after insert, after update) {

 
  for(Account a:trigger.new){
    if(a.Industry=='Energy'){
      a.Rating='Hot';

     
    }

  }



}


// OUTCOME : Trigger2_AccountTrigger: execution of AfterInsert caused by: System.FinalException: Record is read-only Trigger.Trigger2_AccountTrigger: line 12, column 1

// Because after trigger is read only you cannot update field. You should make the trigger before OperationType.


// Correct Code is below.

/** 

 trigger Trigger2_AccountTrigger on Account (before insert, before update) {
  for(Account a:trigger.new){
    if(a.Industry=='Energy'){
      a.Rating='Hot';
    }
  }
}
*/