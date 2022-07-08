/**
 * @description       : AURA8 APEX Property access from AURA
 * @author            : Selçuk GÖKTAŞ
 * @group             : 
 * @last modified on  : 07-03-2022
 * @last modified by  : Selçuk GÖKTAŞ
**/
public with sharing class AURA8_AccountListServerController {
@AuraEnabled
public String name{get;set;}

@AuraEnabled
public String phoneNumber{get;set;}

@AuraEnabled
public String industry{get;set;}

@AuraEnabled
public String companyName{get;set;}

@AuraEnabled
public List<Account> accountList{get;set;}



    public AURA8_AccountListServerController() {

    }



    @AuraEnabled
    public static AURA8_AccountListServerController accountlistServerController(){
        AURA8_AccountListServerController selfClass = New AURA8_AccountListServerController();
        
       

        try {
            
        
            selfClass.accountList = New List<Account>();
        for(Account singleAcc:[SELECT id,Name,Industry,Type FROM Account LIMIT 10]){
            selfClass.accountList.add(singleAcc);

        }

        selfClass.companyName='Propertry Test from APEX - ABC LLC';
        selfClass.phoneNumber='Propertry Test from APEX - 111111';
        selfClass.industry='Propertry Test from APEX - Education';
        selfClass.name='Propertry Test from APEX - Alex Victor';
       



        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }


        return selfClass;
    }



}