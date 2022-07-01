/**
 * @description       : Trigger Template
 * @author            : Selçuk GÖKTAŞ
 * @group             : 
 * @last modified on  : 07-01-2022
 * @last modified by  : Selçuk GÖKTAŞ
 * 
 * 
 * 
 * Trigger Metadata note : <status>Inactive</status> make your trigger inactive. It means when you deploy this code to your org
 * it will not work until you activate this...... check trigger metadata file....
 * 
**/
trigger TRIGGER1_ContactTrigger on Contact (before insert, after insert,before update,after update,
before delete,after delete, after undelete) {

System.debug('Trigger.operationType : '+ Trigger.operationType);

        

    switch on Trigger.operationType {
        when BEFORE_INSERT {

            for (Contact con:Trigger.new){ // trigger.new Trigger.newMap trigger.old trigger.oldMap



            } 

        }
        when BEFORE_UPDATE {

            for (Contact con:Trigger.new){



            } 

        }

       
        when AFTER_INSERT {

        }
        when AFTER_UPDATE {


        }
        when BEFORE_DELETE {

        }
        when AFTER_DELETE {

        }
        when AFTER_UNDELETE {

        }

    }
                
                
                                            


}