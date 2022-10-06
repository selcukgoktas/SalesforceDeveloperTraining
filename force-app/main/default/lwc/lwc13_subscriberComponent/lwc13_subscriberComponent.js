import { LightningElement,track } from 'lwc';
import { createMessageContext,releaseMessageContext,
APPLICATION_SCOPE,subscribe,unsubscribe } from 'lightning/messageService';

import lwc13mc from '@salesforce/messageChannel/lwc13mc__c';

export default class Lwc13_subscriberComponent extends LightningElement {
  
  context=createMessageContext();

  subscription=null;

  @track receivedMessage='';



  connectedCallback(){
    this.subscribeMC();
  }


  subscribeMC(){
    if(this.subscription){
      return;
    }
    this.subscription=subscribe(this.context,lwc13mc,(message)=>{
      this.handleMessage(message);

    },{scope:APPLICATION_SCOPE});

    

  }

  handleMessage(message){
    console.log('------------------------------------------');
    console.log(this.subscription);
    console.log(JSON.stringify(this.subscription));
    
    console.log(message);
    console.log(JSON.stringify(message));
    console.log(message.recordId);
    console.log(message.recordData);

    console.log('------------------------------------------');

    this.receivedMessage = message? message.recordId + ' ' + message.recordData : 'No message is fould';
    

  }


}