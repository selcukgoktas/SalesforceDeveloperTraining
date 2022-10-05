/**
 * @description       : 
 * @author            : Selçuk GÖKTAŞ
 * @group             : 
 * @last modified on  : 10-05-2022
 * @last modified by  : Selçuk GÖKTAŞ
**/
trigger TRIGGER4_LeadTrigger on Lead (after insert) {


  switch on Trigger.operationType {
    when BEFORE_INSERT {
    }
    when AFTER_INSERT { 

      TRIGGER4_LeadTriggerHelper leadHelper = New TRIGGER4_LeadTriggerHelper();

      // leadHelper.checkFields(trigger.NewMap); // Map - Set - List Version

      leadHelper.checkFields(trigger.New); 

     }
    when BEFORE_UPDATE { }
    when AFTER_UPDATE { 

      
    }
    when BEFORE_DELETE {}
    when AFTER_DELETE {}
    when AFTER_UNDELETE {}

  }

}