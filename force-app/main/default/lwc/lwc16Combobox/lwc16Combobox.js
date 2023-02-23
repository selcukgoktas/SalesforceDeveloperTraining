import { LightningElement } from 'lwc';


import retrieve from "@salesforce/apex/lwc16AccountController.retrieve";


export default class Lwc16Combobox extends LightningElement {
  value = '';

  Industry='';




  options=[
    
  ];

  /*
  get options() {
    return [
        { label: 'New', value: 'new' },
        { label: 'In Progress', value: 'inProgress' },
        { label: 'Finished', value: 'finished' },
    ];
}

*/

handleChange(event) {
  this.value = event.detail.value;
  
  let selectedObj=this.options.filter(option=>option.value==this.value);

  console.log(JSON.parse(JSON.stringify(selectedObj)));

  this.Industry=selectedObj[0].Industry;
  
}


connectedCallback(){
  retrieve()
  .then(data=>{

    data.map(element => {
     

      this.options=[
        ...this.options,
        {
          label:element.Name,
          value:element.Id,
          Industry:element.Industry
        }
      ]
      console.log('MAP this.options');
      console.log(this.options);

    });

  })
  .catch(errr=>{
    console.log(errr);
  });

}

}