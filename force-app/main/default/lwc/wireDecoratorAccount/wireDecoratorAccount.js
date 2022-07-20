import { LightningElement,track
// wire
 } from 'lwc';

import getAccountRecords from '@salesforce/apex/wireDecoratorController.getAccountRecords';


export default class WireDecoratorAccount extends LightningElement {

  

  @track columns = [
    {label:'Id',fieldName:'Id',type:'text'},
    {label:'Name',fieldName:'Name',type:'text'},
    {label:'Created Date',fieldName:'CreatedDate',type:'date'},
  ];
  @track multiAccountList;


connectedCallback(){

  getAccountRecords()  // imperative call
  .then(response=>{
    this.multiAccountList=response;
  })
  .catch(error =>{
    this.multiAccountList=undefined;
  });

}

  /*
  @wire(getAccountRecords) accrecords({error,data}){

    if(data){
      this.multiAccountList=data;

      console.log(data);
      data.forEach(element => {
        console.log(element);
      });

    } else if(error){
      this.multiAccountList=undefined;
      console.log(error);

    }


  }

  */

}