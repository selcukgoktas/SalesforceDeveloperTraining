import { LightningElement,track } from 'lwc';

import retrieve from '@salesforce/apex/LWC13_GetAccounts.retrieve';

import { createMessageContext, releaseMessageContext,publish } from 'lightning/messageService';

import lwc13mc from '@salesforce/messageChannel/lwc13mc__c';

export default class Lwc13_publishComponent extends LightningElement {

  context=createMessageContext();


  handleClick(event){
    event.preventDefault();

    const message={
      recordId:'this is record id',
      recordData:'this is record data'
    }

    publish(this.context,lwc13mc,message);
  }
}