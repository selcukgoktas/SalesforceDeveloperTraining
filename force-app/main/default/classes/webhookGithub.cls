@RestResource(urlMapping='/api/webhooks/githubtest/*')
global with sharing class webhookGithub {
    
    @HttpPost
    global static void handleNotification(){
        
        RestRequest req=restContext.request;
        RestResponse res=restContext.response;
        
        String hashedVal = req.headers.get('X-Hub-Signature-256');
        Blob reqBody=req.requestBody;
        
        Blob hmac = Crypto.generateMac('hmacSHA256', reqBody, Blob.valueOf('CCOemh46ci6xn60ycpcfMIrtcOUHHyah'));
        String hmacStr= 'sha256=' + EncodingUtil.convertToHex(hmac);
        
        if(hashedVal==hmacStr){
            
            JSONParser parser = JSON.createParser(req.requestBody.toString());
            
            // [This is the most reasonable way in this condition. ] 
            // 
            // Think to create a class to resolve json like that...
            // 
            // 
          	Map<String, Object> responseMap = (Map<String,Object>)JSON.deserializeUntyped(req.requestBody.toString());
            
            // Map<String, Object> sender = (Map<String,Object>)responseMap.get('sender');
            
            
			Blob rb = Blob.valueOf(JSON.serialize(gson.resolve(responseMap,'repository.html_url')));            
          
             res.statusCode=200;          
             res.responseBody=rb;

            
            /* [Time out Error]
            JSON2Apex gitres = New JSON2Apex(parser);
            
             res.statusCode=200;
            res.responseBody=Blob.valueOf(JSON.serialize(gitres.repository.owner.name));
            */
            
            /*  [response like Apex class  Must be created, but i love this one. if you need the whole content you can create this.]


           	pusher psh;
            head_commit hc;
            
            String repo;
            
            while(parser.nextToken()!=null){
                if(parser.getText()=='pusher'){
                    parser.nextToken();
                    psh=(pusher)parser.readValueAs(pusher.class);
                    System.debug(psh);
                    
                }
                
                if(parser.getText()=='head_commit'){
                    parser.nextToken();
                    hc=(head_commit)parser.readValueAs(head_commit.class);
                    System.debug(hc);
                }
            }
            
            
            res.statusCode=200;
            res.responseBody=Blob.valueOf(JSON.serialize(hc.author.name));
        	
*/
            
        } else {
            
            res.statusCode=401;
            res.responseBody=Blob.valueOf(JSON.serialize(new ResponseObj('AUTH','FAIL')));

        }
        
      
        
        
        
        
        
    } // end of http post
    
    public class ResponseObj{
        String response;
        String message;
        
        public ResponseObj(String res,String mes){
            response=res;
            message=mes;
        }
    }
    
    public class pusher{
            public String name;
            public String email;
            public pusher(String name, String email){
                name=name;
                email=email;
            }
        }
    
    
    public class head_commit{
        String message;
        String timestamp;
        author author;
        
        public head_commit(String mes,String ts, author auth){
            message=mes;
            timestamp=ts;
            author=auth;
        }
        
        
               
        
        
    }
    
     public class author{
            String name;
            String email;
            public author(String nameauthor,String emailauthor){
                name=nameauthor;
                email=emailauthor;
            }
        }


}