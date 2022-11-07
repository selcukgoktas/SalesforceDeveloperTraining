# Salesforce Developer Training

Selçuk GÖKTAŞ [Linkedin](https://www.linkedin.com/in/selcukgoktas/)

# Salesforce Developer Notes

[Visit Site](https://selcukgoktas.github.io/Salesforce-Developer-Guide/)

# Contents

## APEX and APEX TEST

### APEX 1 (BusinessToCustommer) - Create Account and Contact Together
We know the person account but we don't prefer to use it in this scenario. So we create an apex class to create account and contact together with the same name. 

### TEST 1 (BusinessToCustommerTest) - Create Account and Contact Apex Class Test
We have an apex class which name is **BusinessToCustommer** and we have method to create account and contact together in place of person account. ( without using person account ) . For this test Class we are going to test this apex class.


## APEX TRIGGER

### Trigger1 - Empty Trigger template

You can use this trigger for every purpose. Just change the related object and use it.
It contains **switch when** expression. It's metadata file make this **trigger inactive**.
If you want to make this activated you should go to the object manager related object and check triggers is active or not.
You can also change metadata file to activate trigger before deployment.


### Trigger2 - Account Trigger
This is an interview Question for Google Salesforce Developer.

### Trigger3 - Account Trigger
v1 - Simple Before update make the account name toUpperCase()
v2 - Do the same thing with trigger helper file and add phone field error.

### Trigger4 - Lead Trigger
With this trigger we will check the phone field of the Lead record then if it is empty we will create a task to the lead owner. 
Trigger and Trigger Helper file will handle the job together.  We have 2 option with trigger.new and trigger.newMap. So we create 2 method to read the triggered lead records. Then use another method to create task. 

### Trigger5 - Account Trigger
Empty Trigger template to show the differences between switch on operation type when and if isbefore isafter

### Trigger6 - Contact Trigger
If there is no phone on the contact record get phone from related account record and update phone field. 

### Trigger7 - Opportunity Trigger
Opportunity Stage cannot be set as previous stages. Only one exception. If user has a specific profile he can set previous stage only if stage is close lost..

### ASYNC Apex

Async apex has more governor limits. You can work with millions of data some of them. You can check details on the [this link](<https://selcukgoktas.github.io/Salesforce-Developer-Guide/Salesforce%20Developer%20(Module)/APEX%20Async%2083ade181e8164901995d57ec616ae221.html>)

### ASYNC1 - Future Method

Async Apex future method example.

### ASYNC2 - Queueable Class

Simple Example Template for Queueable Class. You should comment out call functions and paste them into salesforce developer console anonmyous window.

### ASYNC3 - Batch Class

Simple Example Template for Batch Class. You should comment out call functions and paste them into salesforce developer console anonmyous window.

### ASYNC4 - Schedule Class

Simple Example Template for Schedule Class. You should comment out call functions and paste them into salesforce developer console anonmyous window.
CronJob


### APEX Security 1 - FLS 
This apex has UI on LWC. **SECURITY1** named LWC component call this apex class and handler. 
There is also comment sections to show different security implementations and results. 
Opportunity Object needs **Credit_Card_c** field API name. First give permission System Admin.
Fill some dummy data to Credit Card field. 
Then you can check with other users or remove permission then check the results. 

### APEX Algorithm ( Algo1)
Check the given number is mystical or not.
Mystical number is a number where the sum of the individual digits is equals to multiplication of all the digits in the number 


### REST1 Call another API
You should add remote site setting  https://gorest.co.in/ this url to run this apex code. 
And Call apex class from anonymous window.

## Visual Force

### Visual Force 1 - Account Contact Create and Delete

Bulk Account and Contact creation with custom apex controller. It contains test code also.
All related visualforce page, apex class and test apex classes are prefix with **VF1\_**

### Visual Force 2 - Create Billing from Opportunity

After you create this page you can add this as a button on the opportunity record details page.
When you click button it will redirect you Visualforce page with Account block. You can update account.
Below the page you can see opportunity product list which include in the billing.
It contains standard controller with extentions.
All related visualforce page, apex classes are prefix with **VF2\_**

### Visual Force 3 - Standard List Controller

Bulk update available Standard list Controller visual force page example.
All related visualforce page are prefix with **VF3\_**

### Visual Force 4 - Standard List Controller without Page Redirect

Bulk update available Standard list Controller visual force page example.
All related visualforce page are prefix with **VF4\_**


### Visual Force 5 - Visualforce with Javascript 

In this example we will use javascript inside the visualforce pages. 

### Visual Force 6 - Visualforce  Javascript Math Calculations 

Use javascript functions with buttons and make some simple calculations. 


### Visual force - Materializecss Example
This is an example usage of the external CSS and JS file. 
it includes **staticresources**. 



## Aura Lightning Component

### Aura1 - Simple Calculator without Attribute Tag

After deployment you should open AURA1 Application and click preview button.
You will see 2 inputbox, you need to write 2 number. Then click the button according to your calculations.
There is no any design system. Because of this you can see clean codes.

### Aura2 - Simple Calculator with Attribute Tag

After deployment you should open AURA2 Application and click preview button.
You will see 2 inputbox, you need to write 2 number. Then click the button according to your calculations.
But this time we will use attribute.
There is no any design system. Because of this you can see clean codes.

### Aura3 - Simple Calculator with Server Controller

After deployment you should open AURA3 Application and click preview button.
You will see 2 inputbox, you need to write 2 number. Then click the button according to your calculations.
But this time we will use Server Controller. Apex will do the calculation.
There is no any design system. Because of this you can see clean codes.

### Aura4 - Contact Create with Server Controller and Error Handling.

After deployment you should open AURA4 application and click preview button.
You will see contact details. Fill the details and click create contact button.
If you make null required field you will see the error on the screen.

### Aura5 - Contact Create with Server Controller and Lightning Component Styles

After deployment you should open AURA5 application and click preview button or
You can add this component into the lightning page with app builder by drag and drop this component.  
You will see contact creation component. Fill the details and click create contact button.
If you make null required field you will see the error on the screen.
You will see change on the UI this time. We will create our components either [Component Library](https://developer.salesforce.com/docs/component-library/overview/components) or [Lightnin Design System](https://www.lightningdesignsystem.com/)
After this component all aura component will have design like that.

### Aura6 - Contact Create and Contact Table

After deployment you should open AURA6 application and click preview button or
You can add this component into the lightning page with app builder by drag and drop this component.  
You will see contact creation component. Fill the details and click create contact button.  
Additionally you will going to see the latest 10 contact created.

### Aura7 - Pass Data From Ligtning Page to Aura

After deployment you should open AURA7 application and click preview button or
You can add this component into the lightning page with app builder by drag and drop this component.  
You will see latest contact list in a comboBox or listbox.

### AURA8 - Work with APEX Properties into Aura

After deployment you should open AURA8 application and click preview button or
You can add this component into the lightning page with app builder by drag and drop this component.  
You will also see **lightning Data Table Example with multi Selection**

### AURA9 - Design Component and Pass Data into AURA

After deployment you should open AURA9 application and click preview button or
You can add this component into the lightning page with app builder by drag and drop this component.  
We suggest that use this component into the lightning page.
You will see the parameters section when you are drag and drop this component into the lightning page.
When you write account this will show account records, when you write opportunity this will list opportunity records.

### AURA10 - Dynamic Record Show with Object Picklist

After deployment you should open AURA10 application and click preview button or
You can add this component into the lightning page with app builder by drag and drop this component.  
We suggest that use this component into the lightning page.
You will see the parameters section when you are drag and drop this component into the lightning page.
Difference with **AURA9** is there is a picklist which show all salesforce objects.
This component is a detailed apex file.

### AURA11 - Lightning Data Service - 1

After deployment you should open AURA11 application and click preview button or
You can add this component into the lightning page with app builder by drag and drop this component.  
We suggest that use this component into the lightning page.
You will not see any client controller or apex controller but you will see that there is a huge job to create account or update. This a kind of standard controller in visualforce.

### AURA12 - Aura Method

We will use aura method to pass data from one aura component to another component.
We can pass attribute string,integer,function etc.

### AURA13 - Aura Application Event

We create Aura Application, **Application Event**, Component1 and Component2. One of the component do some action and other component will be informed about this. All component in the same application will be informed about this event.

### AURA14 - Message Channel
For this example we use the messagechannel So you should check the **messageChannels** folder and **mc.messageChannel-meta.xml** file.  Also we have two component prefix with Aura14. One is **publisher** other one is **subscriber** . Publisher send payload message by using message channel and subscriber is receiving this message.

### AURA15 - Message Channel and Account List Navigation ( Split View like UI)
For this example we use the messagechannel So you should check the **messageChannels** folder and **mc.messageChannel-meta.xml** file.  Also we have two component prefix with Aura14. One is **publisher** other one is **subscriber** . Publisher send payload message by using message channel and subscriber is receiving this message. We are sending Record id of the selected account, and subscriber component will receive this record id and show the related account details by using **Lightning Data Service**.



### LWC01 - Hello Component
This is the first LWC Component. 

### LWC02 - Track and API Decorators
Track decorator is not an obligation after Spring 20 update but still can be used for some place. Object data must be used track decorator.

### LWC03 - WIRE Decorator
This get data from apex controller. Just retrieve the Last 10 Account records. 
Apex controller method must be annotate with **@AuraEnabled(cacheable=true)**


### LWC04 - With and Without WIRE Decorator
This will show the difference **with / without** wire decorator call apex controller. 
Plus we will use **Lightning-datatable** for showing the records.
If you are using without wiring you should make apex aura annotation without cacheble true.
**@AuraEnabled(cacheable=true) : with WIRE**
**@AuraEnabled : without WIRE**

### LWC05 - Call Apex for Simple Calculator
This will pass the parameters what apex asks and get the returned result that pass these data to the LWC UI.

### LWC06 - Lightning Data Service Create Records without APEX
Create Account with LDS
ShowToastEvent
NavigationMixin usages.

### LWC07 - Quick Update with lightning-record-form
Read recordid from the page. **ACCOUNT**
Update account record with lightning-record-form
Show toast message for succesfully update operation.


### LWC08 - Quick Update with lightning-record-form
Read recordid from the page. **CONTACT**
Update account record with lightning-record-form
Show toast message for succesfully update operation.

### LWC09 - MAP on the Contact Records
**Map** and **Wire** Decorator to collect the contact data.
```
import { getRecord } from 'lightning/uiRecordApi';
```

### LWC10 - LWC and AURA interoperability
Colorpickerlwc10 is a child component and only has a color picker. When you select a color
it fire an event. Aura component is parent component and when an event fired it will get this and conver the color of the text. There is also aura app to see the preview. All component contain **LWC10** term. 

### LWC11 - LWC Barcod Scanned Template.
It's empty barcod scanner template. You can valid barcods and see the results on lightning-card as a simple text. But you can create more efficient projects with them. Such as super market stock management or creating billing by only scanning the product barcods. Its up to your imagination.


### LWC12 - Communication between parent and child.
From Parent to child @api decorator is enough but if you want to send data from child to parent you have to use Custom Event.
https://developer.salesforce.com/docs/component-library/documentation/en/lwc/reference_decorators
https://developer.salesforce.com/docs/component-library/documentation/en/lwc/lwc.events

### LWC13 - Communication between independent component.
Lightning Message Channel.
You should check the file inside the messageChannels folder also. You can't create it on salesforce setup currently.
https://developer.salesforce.com/docs/component-library/documentation/en/lwc/lwc.use_message_channel

### LWC14 - Simple TODO Application Single Component
Simple todo application to learn array and spread operator and LWC for Each iteration.  Furthermore you can use Enter, Shift + Enter and Ctrl + Enter keys to increase productivity. 



### LWC15 - Design Properties
This example shows how to use design properties.Please check **xml** file to learn more.
**Title** and **Description** are LWC design properties. When you add these properties you should assign a target to use the properties. Our example is Digital Experience site. You should add **lightningCommunity__Page** and **lightningCommunity__Default** for targets section and use targetconfig for **lightningCommunity__Default**.
You can use this component on digital experience sites right now. 
Additionally we add some css and html to change the appearance of the component. 

