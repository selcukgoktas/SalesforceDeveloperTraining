/**
 * @description       : 
 * @author            : Selçuk GÖKTAŞ
 * @group             : 
 * @last modified on  : 07-27-2022
 * @last modified by  : Selçuk GÖKTAŞ
**/
public with sharing class REST1_OpenAPI {
    public REST1_OpenAPI() {

    }

    public static void callapi(){
        // URL  https://gorest.co.in/public/v2/users

        //datatype variablename Operator Expressions

        String endpoint='https://gorest.co.in/public/v2/users';
        String method='GET';
        Http http =New Http();
        HttpRequest req=New HttpRequest();

        req.setEndpoint(endpoint);
        req.setMethod(method);

        HttpResponse res= http.send(req);

        if(res.getStatusCode()==200){
            System.debug(res.getBody());
        }

        
    }
}