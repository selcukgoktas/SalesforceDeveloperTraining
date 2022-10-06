@RestResource(urlMapping='/api/webhook/whatsapp/*')
global without sharing class webhookwhatsapp {
    
   @HttpGet
    global static void handleHook(){
      
            RestRequest req = RestContext.request;
            RestResponse res = RestContext.response;
            
           String verifyToken = req.params.get('hub.verify_token');
           String mode = req.params.get('hub.mode');
           String challenge = req.params.get('hub.challenge');
            
            // my token : CCOemh46ci6xn60ycpcfMIrtcOUHHyah
             
            System.debug('mode :'+mode);
            System.debug('verifyToken :'+verifyToken);
            System.debug('challenge :'+challenge);
            
           
                    if(verifyToken=='CCOemh46ci6xn60ycpcfMIrtcOUHHyah'){
                        res.statusCode=200;
                        res.responseBody = blob.valueOf(challenge);
                    } else {
                        res.statusCode=401;
                        

                    }
            
             
    
    
    }
    
    
    
     @HttpPost
    global static void postSubscriptions(){
          	RestRequest req = RestContext.request;
            RestResponse res = RestContext.response;
        	String postBody= JSON.serialize(req.requestBody);
        
            System.debug(postBody);
        
        
    }

}