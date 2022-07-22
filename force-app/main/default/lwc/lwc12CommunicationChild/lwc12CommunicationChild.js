import { LightningElement,api } from 'lwc';

export default class Lwc12CommunicationChild extends LightningElement {

  @api childMessage;

  onclickHandler(event){

    const sendMsg = new CustomEvent('childmessage',{
      detail:'Hello im your child component'
    });

    this.dispatchEvent(sendMsg);

  }
}