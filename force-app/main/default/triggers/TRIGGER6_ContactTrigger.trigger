trigger TRIGGER6_ContactTrigger on Contact (before insert,before update,before delete, after insert,after update, after delete, after undelete) {

    
    List<Contact> nophone = New List<Contact>();
    
    Map<Id,Id> contactAccountMap = New Map<Id,Id>();
    
    switch on Trigger.operationType {
    when BEFORE_INSERT {
        
         
        
        
    }
    when AFTER_INSERT {
        
         for(Contact con:Trigger.new){
             if(string.isBlank(con.phone)){
                 nophone.add(con);
                  contactAccountMap.put(con.id,con.AccountId);
             }
         }
        
        List<String> accids= contactAccountMap.values();
        Map<Id,Account> multiAccount = New Map<Id,Account>([SELECT id, Name, Phone FROM Account WHERE id=:accids]);
        
        for(Contact con:nophone){
            con.phone=multiAccount.get(con.accountid).phone;
            
            
            
        }
        
    }
    when BEFORE_UPDATE {}
    when AFTER_UPDATE {}
    when BEFORE_DELETE {}
    when AFTER_DELETE {}
    when AFTER_UNDELETE {}
}
 
    
    
    
}