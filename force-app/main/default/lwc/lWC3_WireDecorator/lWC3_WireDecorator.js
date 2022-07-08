import { LightningElement,wire,track} from 'lwc';
import retrieveAccounts from '@salesforce/apex/LWC3_DecoratorWireAccountController.retrieveAccounts';

export default class LWC3_WireDecorator extends LightningElement {
@track multiAccountList; 


  @wire(retrieveAccounts) accrecords({error,data}){
    if(data){
      this.multiAccountList=data;
    } else if(error){
      this.multiAccountList=undefined;
    }
  }
    
}