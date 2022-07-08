import { LightningElement,wire,track } from 'lwc';
import retrieveAccounts from '@salesforce/apex/LWC04_WireDataTableAccountController.retrieveAccounts';
import retrieveXAccounts from '@salesforce/apex/LWC04_WireDataTableAccountController.retrieveXAccounts';

export default class LWC04_WireDataTable extends LightningElement {

  @track multiAcc;
  @track err;
  @track columns=[
        {label:'Name',fieldName:'Name',type:'text'},
        {label:'Phone',fieldName:'Phone',type:'phone'},
        {label:'Industry',fieldName:'Industry',type:'text'}
  ];

/*
@wire(retrieveAccounts) accountRecords({error,data}){

if(data){
this.multiAcc=data;
} else if(error){
this.multiAcc=undefined;
}

}*/


// imperatively withoud wiring
connectedCallback(){
  retrieveXAccounts({NumofAcc:20})
  .then(result=>{
    this.multiAcc=result;
  })
  .catch(error=>{
    this.err=error;
  });
}


}