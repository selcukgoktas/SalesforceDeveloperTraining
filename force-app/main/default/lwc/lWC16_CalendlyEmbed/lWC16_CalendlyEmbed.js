import { LightningElement,api } from 'lwc';
import {  loadScript } from 'lightning/platformResourceLoader'; // loadStyle

import calendlyWidget from '@salesforce/resourceUrl/calendly';


export default class LWC16_CalendlyEmbed extends LightningElement {




  @api CalendlyLink;

  connectedCallback(){
    console.log(this.CalendlyLink);

    this.CalendlyLink=this.CalendlyLink?this.CalendlyLink.replaceAll('%3A',':').replaceAll('%2F','/'):'';

  }
  renderedCallback(){

   

    console.log(calendlyWidget+'/widget.js');

  
      loadScript(this, calendlyWidget+'/widget.js')
      .then(()=>{
    console.log('Successfully Script Loaded');
   
  })
  .catch(()=>{
    console.log('Script Load Error');
  });



  }


  
  
 
}