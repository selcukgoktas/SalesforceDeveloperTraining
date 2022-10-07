trigger TRIGGER7_AccountTrigger on Account (after undelete) {

    
    for(Account acc:Trigger.New){
        acc.name=acc.name+'__Undeleted';
    }
    
}