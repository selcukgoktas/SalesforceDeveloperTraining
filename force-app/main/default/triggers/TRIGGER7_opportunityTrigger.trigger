trigger TRIGGER7_opportunityTrigger on Opportunity (before update) {

    List<String> StageList = New List<String>{
        'Prospecting',
        'Qualification',
        'Needs Analysis',
        'Value Proposition',
        'Id. Decision Makers',
        'Perception Analysis',
        'Proposal/Price Quote',
        'Negotiation/Review',
        'Closed Won','Closed Lost' };
            
    Map<Id,Opportunity> oldMap = Trigger.OldMap;
    Map<Id,Opportunity> newMap = Trigger.NewMap;
    
    
    
    for(Opportunity op:Trigger.New){
        
        Integer newStage= Integer.valueOf(StageList.indexOf(op.StageName));
        
  		Integer oldStage= Integer.valueOf(StageList.indexOf(oldMap.get(op.id).StageName)); // oldstage name
            System.debug('oldStage : '+ oldStage);  
        	System.debug('newStage : '+ newStage); 
        	System.debug('opprtunity name : '+ op.name); 
        

Id userProfileId = System.UserInfo.getProfileId();

Profile p = [SELECT id, Name FROM Profile WHERE id=:userProfileId];
      
        if(oldStage==9 && p.Name=='System Administrator'){ // and user is specific profile... 
           
            System.debug('if closed lost, going back is not a problem but user must be a system administrator.....');
        } else if(newStage<oldStage){
            op.StageName.addError('Stage Cannot be go back...');
        }
    }
}