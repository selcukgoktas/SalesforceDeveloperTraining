/**
 * @description       : 
 * @author            : Selçuk GÖKTAŞ
 * @group             : 
 * @last modified on  : 07-01-2022
 * @last modified by  : Selçuk GÖKTAŞ
**/


public with sharing class VF2_AccCont {

    private Id oppId=ApexPages.currentPage().getParameters().get('id');
    public Id accId;
    public Account singleAcc;
    
        public VF2_AccCont(ApexPages.StandardController controller) {
        
        Opportunity singleOpp=[SELECT id, accountid FROM Opportunity WHERE id=:oppId LIMIT 1];
        
        accId=singleOpp.accountid;
    
        }
        
        
        
        public Account getsingleAcc(){
        singleAcc = [SELECT id, Name, BillingStreet,BillingCity,BillingState,BillingPostalCode,BillingCountry,Phone FROM Account WHERE id=:accId LIMIT 1];
        // singleAcc=multiAcc.get(0);
        return singleAcc;
        }
        
        
        public PageReference saveSingleAccount(){
            upsert singleAcc;
            PageReference pageRef= New PageReference(ApexPages.currentPage().getUrl());
            pageRef.setRedirect(true);
            return pageRef;
        
        }
        
    
    }