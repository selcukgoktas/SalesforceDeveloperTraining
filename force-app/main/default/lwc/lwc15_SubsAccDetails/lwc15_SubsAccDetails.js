import { LightningElement,track } from 'lwc';
import { createMessageContext,releaseMessageContext,
APPLICATION_SCOPE,subscribe,unsubscribe } from 'lightning/messageService';

import iwc15mc from '@salesforce/messageChannel/lwc15mc__c';


export default class Lwc15_SubsAccDetails extends LightningElement {
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
    this.subscription=subscribe(this.context,iwc15mc,(message)=>{
      this.handleMessage(message);

    },{scope:APPLICATION_SCOPE});

    

  }

  handleMessage(message){
    console.log('------------------------------------------');
    
    console.log(message);
    console.log(JSON.stringify(message));
    console.log(message.recordId);
    console.log(message.recordData);

    console.log('------------------------------------------');

    this.receivedMessage = message? message.recordId + ' ' + message.recordData : 'No message is fould';
    

  }


}