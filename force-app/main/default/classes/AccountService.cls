/**
 * @description       : 
 * 
 * Create Connected APP
 * 
 * Get Authentication :  https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/quickstart_oauth.htm
 * 
 * 
 * 
 * @author            : Selçuk GÖKTAŞ
 * @group             : 
 * @last modified on  : 07-27-2022
 * @last modified by  : Selçuk GÖKTAŞ
**/

@RestResource(urlMapping='/helloWebService/*')
global with sharing class AccountService {
  
    @HttpGet
    global static String helloService(){
        
      return 'Hello Apex Rest';
        
    }

}