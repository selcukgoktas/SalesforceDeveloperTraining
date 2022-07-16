import { LightningElement,api } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
    

import firstName from '@salesforce/schema/Contact.FirstName';
import lastName from '@salesforce/schema/Contact.LastName';
import email from '@salesforce/schema/Contact.Email';
import phone from '@salesforce/schema/Contact.Phone';





export default class LWC08_QuickUpdateContact extends LightningElement {

  objectApiName='Contact';
  @api recordId;

  @api fieldList=[firstName,lastName,email,phone];

  connectedCallback(){
    
 
    
  }

  successRecordHandler(event){

   
 
    this.message=`Your ${this.objectApiName} record is updated. ( ${event.detail.fields.FirstName.value} ${event.detail.fields.LastName.value} )`;
   
   
    const evt = new ShowToastEvent({
          title: 'success ',
          message: this.message ,
          variant: 'success',
          mode: 'dismissable'
      });
      this.dispatchEvent(evt);

    

  }
}