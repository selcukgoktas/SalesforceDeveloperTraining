import { LightningElement,track,api,wire } from 'lwc';
import { getRecord, getFieldValue } from 'lightning/uiRecordApi';

import FirstName from '@salesforce/schema/Contact.FirstName';
import LastName from '@salesforce/schema/Contact.LastName';
import MailingCity from '@salesforce/schema/Contact.MailingCity';
import MailingCountry from '@salesforce/schema/Contact.MailingCountry';
import MailingState from '@salesforce/schema/Contact.MailingState';
import MailingPostalCode from '@salesforce/schema/Contact.MailingPostalCode';
import MailingStreet from '@salesforce/schema/Contact.MailingStreet';

const FIELDS =[FirstName,LastName,MailingCity,MailingCountry,MailingState,MailingPostalCode,MailingStreet];


export default class LWC09_MAPComponent extends LightningElement {
  @api recordId; 
  @track mapMarkers;
  contact; 
  account;
  zoomLevel = 15;
    
  @wire(getRecord, {recordId:'$recordId', fields:FIELDS})
  

  wiredRecord({ error, data }) {

    if (error) {
        let message = 'Unknown error';
        if (Array.isArray(error.body)) {
            message = error.body.map(e => e.message).join(', ');
        } else if (typeof error.body.message === 'string') {
            message = error.body.message;
        }

        console.log(message);
       
    } else if (data) {

      console.log('--------------'); 
      console.log(data);  
      console.log('--------------'); 
    

      
        this.contact = data;
        this.mapMarkers = [
          {
              location: {
                
                  City: this.contact.fields.MailingCity.value,
                  Country: this.contact.fields.MailingCountry.value,
                  PostalCode: this.contact.fields.MailingPostalCode.value,
                  State: this.contact.fields.MailingState.value,
                  Street: this.contact.fields.MailingStreet.value,
                  
              },
              value: 'Location1',
              title: 'Contact',
              description:`${this.contact.fields.FirstName.value} ${this.contact.fields.LastName.value} `
          },
      ];
   


       
       
        
    }
}



}