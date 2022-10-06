/**
 * @description       : 
 * @author            : Selçuk GÖKTAŞ
 * @group             : 
 * @last modified on  : 10-05-2022
 * @last modified by  : Selçuk GÖKTAŞ
**/
public with sharing class TRIGGER4_LeadTriggerHelper {
    public TRIGGER4_LeadTriggerHelper() {

    }



    // List Version 
    public void checkFields(List<Lead> leadList){


        List<Lead> multiLead = New List<Lead>();

        for(Lead singleLead:leadList){
   
            if(String.isBlank(singleLead.phone)){

                multiLead.add(singleLead);

            }

        }


        assignTask(multiLead);
    }


    // Map Set List Version  
    public void checkFields(Map<Id,Lead> leadMap){


        Set<Id> LeadSet = leadMap.keySet();


        List<Lead> multiLead = New List<Lead>();

        for(Id LeadId:LeadSet){
            Lead singleLead = New Lead();

            singleLead = leadMap.get(LeadId);

            if(String.isBlank(singleLead.phone)){

                multiLead.add(singleLead);

            }

        }

        assignTask(multiLead);
        
    }




    public void assignTask(List<Lead> emptyFieldLeads){

        List<Task> multiTask = New List<Task>();

        for(Lead singleLead:emptyFieldLeads){
            Task singleTask = New Task();

            singleTask.Subject='Phone Field Must Be Filled'; // picklist : Call Email, Send Letter ,Send Quote, Other
            singleTask.ActivityDate=date.Today()+5;
            singleTask.WhoId =singleLead.id ;// contact or Lead Lookup field; Field Label is  Name
            singleTask.OwnerId=singleLead.OwnerId ; // lookup user, calender or group Field name is Assigned To
            singleTask.Status='Not Started'; // picklist : Not Started, In Progress, Completed, Waiting on someone else, Deferred
            singleTask.IsReminderSet=true;
            singleTask.ReminderDateTime = DateTime.now();
            multiTask.add(singleTask);
        }

        insert multiTask;

    }
}