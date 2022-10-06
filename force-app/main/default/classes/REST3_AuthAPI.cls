/**
 * @description       : You can add this to another org and combine 2 salesforce org with that way. REST2 + Rest3
 * @author            : Selçuk GÖKTAŞ
 * @group             : 
 * @last modified on  : 07-27-2022
 * @last modified by  : Selçuk GÖKTAŞ
**/


public class REST3_AuthAPI {
   
    public static Integer callrest2(){
        String endpoint='https://dreamsolution-dev-ed.my.salesforce.com/services/apexrest/accountservice?accountid=0018d00000DEmXtAAL';
        Http http=New Http();
        HttpRequest req= New HttpRequest();

        String method='GET';
        String key='Authorization';
        String value='Bearer !ARwAQIz23Z81DtNQ.YwhRulaC3HKoBejR62gPGYfQZ7Zvja7drSgXl9guS47TlHpieAh2NiqR7LAgQZJE.kfzrH0swlaj_LO';
        req.setEndpoint(endpoint);
        req.setHeader(key, value);
        req.setMethod(method);

        HttpResponse res = http.send(req);

        return res.getStatusCode();
    }
}