/**
 * @description       : 
 * @author            : Selçuk GÖKTAŞ
 * @group             : 
 * @last modified on  : 07-21-2022
 * @last modified by  : Selçuk GÖKTAŞ
**/
public with sharing class SECURITY1_OpportunityController {
    public SECURITY1_OpportunityController() {
        // Constructor

    }

    @AuraEnabled(cacheable=true)   
    public static List<Opportunity> retrieve(){

        return SECURITY1_OpportunityHelper.retrieveOpportunity();

    }
}