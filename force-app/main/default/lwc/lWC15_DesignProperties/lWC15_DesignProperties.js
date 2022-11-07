import { LightningElement,api } from 'lwc';

export default class LWC15_DesignProperties extends LightningElement {

@api Title;
@api Description;


connectedCallback(){

  this.Description=this.Description.replaceAll('%20',' ');
  
}
}