import { LightningElement,track } from 'lwc';

export default class Lwc12CommunicationParent extends LightningElement {

  @track message;
  @track parentText;
  @track childMessage;

  onclickHandler(){

    this.message=this.parentText;
    console.log('----------------');
    console.log(this.parentText);
    console.log('----------------');

  }

  onchangeTextHandler(event){
this.parentText=event.target.value;
  }

  childMessageHandler(event){
this.childMessage=event.detail;

  }
}