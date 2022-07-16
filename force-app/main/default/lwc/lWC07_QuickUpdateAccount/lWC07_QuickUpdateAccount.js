import { LightningElement,api } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
  
import name from '@salesforce/schema/Account.Name';
import phone from '@salesforce/schema/Account.Phone';
import industry from '@salesforce/schema/Account.Industry';


export default class LWC07_QuickUpdateAccount extends LightningElement {

@api recordId;
@api objectApiName='Account';
message;

fieldList=[name,phone,industry];

successAccountHandler(event){
  
 
  this.message= `Account ${event.detail.fields.Name.value} is updated succesfully.`;

 
  const evt = new ShowToastEvent({
        title: 'Success ',
        message: this.message ,
        variant: 'success',
        mode: 'dismissable'
    });
    this.dispatchEvent(evt);
}
}