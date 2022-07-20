import { LightningElement,track,api } from 'lwc';

export default class LWC01_HellofirstComponent extends LightningElement {

  @track mywebsite='selcukgoktas.com';  // track is not an obligation.
  @track contactRecord={   // track is must
    'FirstName':'',
    'LastName':''
  };

  @api onclickHandler(event){

  }


}