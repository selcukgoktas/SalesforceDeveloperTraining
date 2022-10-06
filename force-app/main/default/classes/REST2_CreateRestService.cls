/**
 * @description       : 
 * @author            : Selçuk GÖKTAŞ
 * @group             : 
 * @last modified on  : 07-27-2022
 * @last modified by  : Selçuk GÖKTAŞ
**/

@RestResource(urlMapping='/accountservice/*')
global class REST2_CreateRestService {
    
    @HttpGet
    global static Account getAccountById(){
        String accountid=RestContext.request.params.get('accountid');
        Account singleAcc=[SELECT id,Name,Industry FROM Account WHERE Id=:accountid];
        return singleAcc;
    }
}