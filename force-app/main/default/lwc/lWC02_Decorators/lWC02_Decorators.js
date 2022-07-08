import { LightningElement,track } from 'lwc';  // ------>track  This is not an obligation after spring 20.

export default class LWC02_Decorators extends LightningElement {
// @track message;  // ------> This is not an obligation after spring 20. But it is still used for objects.  @track fullName = { firstName : '', lastName : '' };
message;
result=0;
firstN=0;
secondN=0;
  handleMsgChange(event){
    this.message=event.target.value;
    
    console.log(this.message);


  }

  handleCalculate(event){

    if(event.target.name=='firstNumber'){
        this.firstN=event.target.value;
    } else if(event.target.name=='secondNumber'){
        this.secondN=event.target.value;
    }

    this.result=parseInt(this.firstN)+parseInt(this.secondN);

  }

}