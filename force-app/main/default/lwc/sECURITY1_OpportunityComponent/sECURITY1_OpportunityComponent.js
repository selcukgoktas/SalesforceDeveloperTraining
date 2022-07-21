import { LightningElement,track,
  //wire 
} from 'lwc';

import retrieve from '@salesforce/apex/SECURITY1_OpportunityController.retrieve';

const COLUMNS = [
  { label: 'Id', fieldName: 'Id',type:'text' },
  { label: 'Name', fieldName: 'Name', type: 'text' },
  { label: 'Amount', fieldName: 'Amount', type: 'currency' },    
  { label: 'CreatedDate', fieldName: 'CreatedDate', type: 'date' },
  { label:'Credit Card' , fieldName:'Credit_Card__c', type:'text'},
];

export default class SECURITY1_OpportunityComponent extends LightningElement {

ObjectApiName='Opportunity';
  @track multiOpportunity;
  @track columns = COLUMNS;

  /*
  // wire apex class method. 
  // even its wire if you don't make secure your apex it will not respect field level security.
// check comments inside the apex controller class and helper class.

  @wire(retrieve) getOpportunity({error,data}){

if(data){
  this.multiOpportunity=data;

} else if (error){
console.log(error);
}
  }
 
*/
 

// imperative inside the connected callback
  connectedCallback(){
    retrieve()
    .then(res=>{
      console.log('----------------');
      console.log(res);
      console.log('----------------');
      this.multiOpportunity=res;
    })
    .catch(err=>{
      console.log(err);
    });
  }

 
}