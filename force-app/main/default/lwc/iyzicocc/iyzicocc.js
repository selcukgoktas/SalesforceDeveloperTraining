import { LightningElement } from 'lwc';


export default class Iyzicocc extends LightningElement {

  ismodalshow=false;
  htmlcontent=`<!doctype html>
  <html lang="en">
  <head>
      <title>iyzico Mock 3D-Secure Processing Page</title>
  </head>
  <body>
  <form id="iyzico-3ds-form" action="https://sandbox-api.iyzipay.com/payment/mock/init3ds" method="post">
      <input type="hidden" name="orderId" value="mock46-8115962680174576iyziord">
      <input type="hidden" name="bin" value="552608">
      <input type="hidden" name="successUrl" value="https://sandbox-api.iyzipay.com/payment/iyzipos/callback3ds/success/27">
      <input type="hidden" name="failureUrl" value="https://sandbox-api.iyzipay.com/payment/iyzipos/callback3ds/failure/27">
      <input type="hidden" name="confirmationUrl" value="https://sandbox-api.iyzipay.com/payment/mock/confirm3ds">
      <input type="hidden" name="PaReq" value="00d08f62-6a66-44da-bed2-61050ed48bf7">
  </form>
  <script type="text/javascript">
      document.getElementById("iyzico-3ds-form").submit();
  </script>
  </body>
  </html>`;

  showModal(){
       
    const iyzipay = this.template.querySelector('.iyzipay');
    
    let parser = new DOMParser();
    console.log('parser',parser);

    let dom_document = parser.parseFromString(this.htmlcontent, "text/html");
    console.log('dom_document',dom_document);

    let body_element = dom_document.getElementsByTagName("body")[0].innerHTML;

    console.log('body_element',body_element);

    console.log(typeof body_element);
    iyzipay.innerHTML=body_element;
  }




}