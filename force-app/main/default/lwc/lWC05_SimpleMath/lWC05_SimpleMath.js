import { LightningElement,api } from 'lwc';

import sum from '@salesforce/apex/LWC05_SimpleCalc.sum';
import sub from '@salesforce/apex/LWC05_SimpleCalc.sub';
import mul from '@salesforce/apex/LWC05_SimpleCalc.mul';
import div from '@salesforce/apex/LWC05_SimpleCalc.div';

export default class LWC05_SimpleMath extends LightningElement {
  numberX;
  numberY;
  result;
  errors;
  showErr=false;

  @api Title;

  handleChangeNumber(event){
    if(event.target.name==='xnum'){
      this.numberX=event.target.value;
      

    }else if(event.target.name==='ynum'){
      this.numberY=event.target.value;
    }

  }

  handleClickSum(){
    // this.result=parseInt(this.numberX)+parseInt(this.numberY); // ----> Without APEX You can do the same like that.

    sum({x:this.numberX,y:this.numberY})
    .then(response=>{
      this.result=response;
    })
    .catch(error=>{
      this.errors=error;
      this.showErr=true;
    });

  }

  handleClickSub(){
    // this.result=parseInt(this.numberX)-parseInt(this.numberY); // ----> Without APEX You can do the same like that.
    sub({x:this.numberX,y:this.numberY})
    .then(response=>{
      this.result=response;
      this.showErr=true;
    })
    .catch(error=>{
      this.errors=error;
      this.showErr=true;
    });
  }

  handleClickMul(){
    // this.result=parseInt(this.numberX)*parseInt(this.numberY); // ----> Without APEX You can do the same like that.
    mul({x:this.numberX,y:this.numberY})
    .then(response=>{
      this.result=response;
    })
    .catch(error=>{
      this.errors=error;
      this.showErr=true;
    });
  }

  handleClickDiv(){
    // this.result=parseInt(this.numberX)/parseInt(this.numberY); // ----> Without APEX You can do the same like that.
    div({x:this.numberX,y:this.numberY})
    .then(response=>{
      this.result=response;
    })
    .catch(error=>{
      this.errors=error;
      this.showErr=true;
    });
  }



}