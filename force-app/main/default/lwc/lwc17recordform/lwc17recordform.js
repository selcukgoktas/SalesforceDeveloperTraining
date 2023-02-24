import { LightningElement,api } from 'lwc';

import FIRSTNAME from "@salesforce/schema/Lead.FirstName";
import LASTNAME from "@salesforce/schema/Lead.LastName";
import ADDRESS from "@salesforce/schema/Lead.Address";
import EMAIL from "@salesforce/schema/Lead.Email";
import PHONE from "@salesforce/schema/Lead.Phone";
import COMPANY from "@salesforce/schema/Lead.Company";


export default class Lwc17recordform extends LightningElement {

  @api objectApiName='Lead';
  selectedCouse='Salesforce';
  @api recordId;

  fields=[FIRSTNAME,
    LASTNAME,
    ADDRESS,
    EMAIL,
    PHONE,COMPANY];

    company=COMPANY;
    fname=FIRSTNAME;
    lname=LASTNAME;

    firstname=FIRSTNAME;
    lastname=LASTNAME;
    address=ADDRESS;
    email=EMAIL;
    phone=PHONE;
    company=COMPANY;

    show=true;

    connectedCallback(){
      
    }

    clickHandler(){
this.show=false;
    }

}