import { LightningElement,api } from 'lwc';

export default class ApiDecoratorChild extends LightningElement {

  @api hellomessage;
}