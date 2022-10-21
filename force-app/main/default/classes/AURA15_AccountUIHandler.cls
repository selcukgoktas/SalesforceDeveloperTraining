/**
 * @description       : 
 * @author            : Selçuk GÖKTAŞ
 * @group             : 
 * @last modified on  : 10-21-2022
 * @last modified by  : Selçuk GÖKTAŞ
**/
public class AURA15_AccountUIHandler {
    public AURA15_AccountUIHandler() {

    }

    @AuraEnabled(cacheable=true)
    public static List<Account> retrieve(){
        List<Account> multiAcc = New List<Account>();

        try {
            multiAcc=[SELECT id, Name, Phone,Industry FROM Account];
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }

        return multiAcc;
    }
}
