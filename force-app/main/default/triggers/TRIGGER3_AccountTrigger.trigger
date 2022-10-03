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
      
      for(Account acc:Trigger.New){
        acc.Name = acc.Name.toUpperCase();

      }
    }
    when AFTER_INSERT {  }
    when BEFORE_UPDATE { }
    when AFTER_UPDATE { }
    when BEFORE_DELETE {}
    when AFTER_DELETE {}
    when AFTER_UNDELETE {}

  }


}