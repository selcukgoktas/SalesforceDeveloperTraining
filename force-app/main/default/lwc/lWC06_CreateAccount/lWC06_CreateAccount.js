import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import { NavigationMixin } from 'lightning/navigation';

    
import Name from '@salesforce/schema/Account.Name';
import Phone from '@salesforce/schema/Account.Phone';
import Industry from '@salesforce/schema/Account.Industry';

export default class LWC06_CreateAccount extends NavigationMixin(LightningElement) {


  message;

  objectApiName='Account';
  fieldList=[Name,Phone,Industry];


  handleAccountCreate(event){

    console.log(event);

    this.message='Account Created by ID ' + event.detail.id;
  
    const evt = new ShowToastEvent({
          title: 'Success ',
          message: this.message ,
          variant: 'success',
          mode: 'dismissable'
      });
      this.dispatchEvent(evt);

      this[NavigationMixin.Navigate]({
        type:'standard__recordPage',
        attributes:{
          recordId:event.detail.id,
          objectApiName:this.objectApiName,
          actionName:'view'
        },

      });
  }
}