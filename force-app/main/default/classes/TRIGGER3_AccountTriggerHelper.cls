/**
 * @description       : 
 * @author            : Selçuk GÖKTAŞ
 * @group             : 
 * @last modified on  : 10-03-2022
 * @last modified by  : Selçuk GÖKTAŞ
**/
public with sharing class TRIGGER3_AccountTriggerHelper {
    public TRIGGER3_AccountTriggerHelper() {

    }

    public void upperCaseAccount(List<Account> multiAcc){

       for(Account singleAcc:multiAcc){
        singleAcc.name=singleAcc.name.toUpperCase();

        if(String.isBlank(singleAcc.phone)){
            singleAcc.phone.addError('Phone Field must be filled....');
        }

       }
    }
}