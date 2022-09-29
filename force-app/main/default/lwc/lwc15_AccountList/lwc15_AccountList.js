import { LightningElement,wire,track } from 'lwc';
// Get Salesforce DATA via APEX Retrieve Account list ( only last 10 )
import retrieve from '@salesforce/apex/lwc15_LightningMessageChannelExample2.retrieve';

// activate message service as publish
import { publish, MessageContext } from 'lightning/messageService';

// add custom message channel
import lwc15mc  from '@salesforce/messageChannel/lwc15mc__c';


export default class Lwc15_AccountList extends LightningElement {
  @track accounts;

connectedCallback(){
  retrieve()
  .then(res=>{
this.accounts=res;
  })
  .catch(err=>{

  });
}

@wire (MessageContext)
messageContext;

accountSelectHandler(event){
  console.log('----SHOW--DATA-VALUE--------');
  console.log( event.target.dataset.value);
  console.log(event.target.getAttribute("data-value"));
 


  

  const payload={recordId:event.target.dataset.value, 
                recordData:{value:'empty data if you need add some data here...'}};

             
                console.log(payload);
               
              

                // MessageContext , Message Channel , Payload ....
     publish(this.MessageContext,lwc15mc,payload);           
}


}