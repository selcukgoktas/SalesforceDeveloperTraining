trigger TRIGGER5_AccountTrigger on Account (before insert) {
   
    if(Trigger.isBefore){
        
        if(Trigger.isInsert){}
        
        if(Trigger.isUpdate){}
        
         if(Trigger.isDelete){}
        
    }
    
    
    
    if(Trigger.isAfter){
        if(Trigger.isInsert){}
        
        if(Trigger.isUpdate){}
        
        if(Trigger.isDelete){}
        
        if(Trigger.isUndelete){}
    }
    
    
    
    
    /*
    
    switch on Trigger.operationType {
    when BEFORE_INSERT {}
    when AFTER_INSERT {}
    when BEFORE_UPDATE {}
    when AFTER_UPDATE {}
    when BEFORE_DELETE {}
    when AFTER_DELETE {}
    when AFTER_UNDELETE {}

  }
*/


}