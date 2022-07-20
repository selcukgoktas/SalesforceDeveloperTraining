import { LightningElement,track } from 'lwc';

export default class TrackDecoratorExample extends LightningElement {

 @track contact={
    'FirstName':'Alex',
    'LastName':'Victor'
  };

  textOnchangeHandler(event){
   // console.log(event.target.name);
   // console.log(event.target.value);


    if(event.target.name==='firstname'){
      this.contact.FirstName=event.target.value;

    }else if(event.target.name==='lastname'){
      this.contact.LastName=event.target.value;
    }

  }
}