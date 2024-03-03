import { LightningElement,api } from 'lwc';

import getTemplate from '@salesforce/apex/templateHandler.getTemplate'
import createTemplate from '@salesforce/apex/templateHandler.createTemplate'
import updateRecord from '@salesforce/apex/schemaClass.updateRecord'


export default class TemplateEditor extends LightningElement {

  @api objectApiName;  // EKLENDİĞİ OBJECT.
  @api recordId;

  @api documentObjectAPI;  // yazilanDilece__c
  @api fieldname;           // dilekce_body__c

  iconname = 'standard:'+this.objectApiName;

  title = this.objectApiName;

  retrievedOptions;

  titleUI = '';


  myVal = '<strong>Create Your Template HERE</strong>';

  allowedFormats = [
    'font',
        'size',
        'bold',
        'italic',
        'underline',
        'strike',
        'list',
        'indent',
        'align',
        'link',        
        'clean',
        'table',
        'header',
        'color',
        'background',
];

    get options() {
      return this.retrievedOptions;
    }


    connectedCallback(){
      getTemplate()
      .then(data=>{
        this.retrievedOptions = data.map(item=>{

          
          return {            
            label:item.Name,
            value:item.body__c
          }
        });
      })
      .catch(err=>{console.log(err)});
    }


    handleChange(event) {
      
      // console.log(event.target.name);
      // console.log(event.target.value);

      // console.log(JSON.parse(JSON.stringify(event.target.options)));
      // console.log(event.target.options.find(opt => opt.value === event.detail.value).label);


      if(event.target.name=='title'){
        this.title = event.target.value.includes(this.objectApiName) ? event.target.value : this.objectApiName+' - '+event.target.value;
        console.log(this.title);
      } else if(event.target.name=='body'){
        this.myVal = event.target.value;
      } else if(event.target.name=='picklist'){
        
        this.titleUI = event.target.options.find(opt => opt.value === event.detail.value).label;

        this.myVal=event.detail.value;
      } 
        
    }

    handleSave(){

      console.log(this.title);
      console.log(this.myVal);

      createTemplate({Name:this.title,Body:this.myVal})
      .then(data=>{
        console.log(data);
      })
      .catch(err=>{
        console.log(err);
      });

    }



    addDescription(){

      updateRecord(
        {
          objectApiName:this.objectApiName,
          recordId:this.recordId,
          updateField:'Description',
          Body:this.myVal
        }
      )
      .then(data=>{
        console.log(data);
      })
      .catch(err=>{
        console.log(err)
      });
    }
}