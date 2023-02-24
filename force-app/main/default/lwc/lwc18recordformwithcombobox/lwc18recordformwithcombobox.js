import { LightningElement,api } from 'lwc';

import retrieve from "@salesforce/apex/lwc18ProductController.retrieve";

import FIRSTNAME from "@salesforce/schema/Lead.FirstName";
import LASTNAME from "@salesforce/schema/Lead.LastName";
import ADDRESS from "@salesforce/schema/Lead.Address";
import EMAIL from "@salesforce/schema/Lead.Email";
import PHONE from "@salesforce/schema/Lead.Phone";
import COMPANY from "@salesforce/schema/Lead.Company";

import DESCRIPTION from "@salesforce/schema/Lead.Description";


export default class Lwc18recordformwithcombobox extends LightningElement {


  @api objectApiName='Lead';
  selectedAccount='Salesforce';

  selectedproduct='';
  @api recordId;


  value = '';

  Industry='';

  options=[];

  fields=[FIRSTNAME,
    LASTNAME,
    ADDRESS,
    EMAIL,
    PHONE,COMPANY,DESCRIPTION];

    company=COMPANY;
    fname=FIRSTNAME;
    lname=LASTNAME;

    firstname=FIRSTNAME;
    lastname=LASTNAME;
    address=ADDRESS;
    email=EMAIL;
    phone=PHONE;
    company=COMPANY;

    description=DESCRIPTION;

    show=true;

 

    clickHandler(){
this.show=false;
    }


    
handleChange(event) {
  this.value = event.detail.value;
  
  let selectedObj=this.options.filter(option=>option.value==this.value);

  console.log(JSON.parse(JSON.stringify(selectedObj)));

  this.selectedproduct=event.detail.value;

  
  
}


connectedCallback(){
  retrieve()
  .then(data=>{

    data.map(element => {
     

      this.options=[
        ...this.options,
        {
          label:element.Name,
          value:element.Id
         
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