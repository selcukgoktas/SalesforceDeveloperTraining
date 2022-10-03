/**
 * @description       : Account Trigger
 * @author            : Selçuk GÖKTAŞ
 * @group             : 
 * @last modified on  : 10-03-2022
 * @last modified by  : Selçuk GÖKTAŞ
**/
trigger TRIGGER3_AccountTrigger on Account (before insert) {


  switch on Trigger.operationType {
    when BEFORE_INSERT {
      
      /*  V1 do the job inside the trigger
      for(Account acc:Trigger.New){
        // acc.Name = acc.Name.toUpperCase();

      }
      */

      // v2 do the job with trigger helper ( handler )

      TRIGGER3_AccountTriggerHelper accHelper = New TRIGGER3_AccountTriggerHelper();

        accHelper.upperCaseAccount(Trigger.New);

        
    }
    when AFTER_INSERT {  }
    when BEFORE_UPDATE { }
    when AFTER_UPDATE { }
    when BEFORE_DELETE {}
    when AFTER_DELETE {}
    when AFTER_UNDELETE {}

  }


}