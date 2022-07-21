import { LightningElement,api, wire,track } from 'lwc';
import { getRecord } from 'lightning/uiRecordApi';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import Amount from '@salesforce/schema/Opportunity.Amount';
import Name from '@salesforce/schema/Opportunity.Name';

const FIELDS=[Name,Amount];

export default class CreateBillingFromOpportunity extends LightningElement {
@api recordId;
@track opportunity;
message;
@track barcodUrl ='';
@track opamount;
@track opname;

@wire(getRecord , {recordId:'$recordId',fields:FIELDS})

wiredRecord({error,data}){
  if(error){

    this.message='Error retrieving Opportunity';
      
     const evt = new ShowToastEvent({
          title: 'success ',
          message: this.message ,
          variant: 'success',
          mode: 'dismissable'
      });
      this.dispatchEvent(evt);


  } else if (data){
    console.log('--------------------------------------');
    console.log(data);
    console.log('--------------------------------------');
this.opportunity=data;

this.opname=data.fields.Name.value;
this.opamount=data.fields.Amount.value;
  }

}


connectedCallback(){
  console.log('--------------------------------------');
  console.log('record id  :'+ this.recordId);
  this.barcodUrl ='https://api.qrserver.com/v1/create-qr-code/?color=000000&bgcolor=2EC7FF&qzone=1&margin=0&size=1000x1000&ecc=L&data='+this.recordId;

  console.log('url  :'+ this.barcodUrl);
  console.log('--------------------------------------');
}



}