# Salesforce Developer Training

Selçuk GÖKTAŞ [You can contact Linkedin for Business Inquires](https://www.linkedin.com/in/selcukgoktas/)

# Salesforce Developer Notes

If you are new salesforce Development You can follow the link and start learning topic by topic. This Repository is not related the document below. The document may contain inclass examples and some notes to the students. But this repository contains some critical topics. Both of them is designed to support in class exercises. 

Students must be prepared from this repo and document below before attending the courses. 

[Developer Notes From simple Apex to Advanced Deployment Topics ] (https://salesforce-consultant-developer.notion.site/Salesforce-Developer-Module-4b6a7600e1cd4c3d8da83a86fc248b0c)

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

![Visual Force 1 - Account Contact Create and Delete](images/vf1.png?raw=true "Visual Force 1 - Account Contact Create and Delete")



### Visual Force 2 - Create Billing from Opportunity

After you create this page you can add this as a button on the opportunity record details page.
When you click button it will redirect you Visualforce page with Account block. You can update account.
Below the page you can see opportunity product list which include in the billing.
It contains standard controller with extentions.
All related visualforce page, apex classes are prefix with **VF2\_**

![Visual Force 2 - Create Billing from Opportunity](images/vf2.png?raw=true "Visual Force 2 - Create Billing from Opportunity")

### Visual Force 3 - Standard List Controller

Bulk update available Standard list Controller visual force page example.
All related visualforce page are prefix with **VF3\_**

![Visual Force 3 - Standard List Controller](images/vf3.png?raw=true "Visual Force 3 - Standard List Controller")

### Visual Force 4 - Standard List Controller without Page Redirect

Bulk update available Standard list Controller visual force page example.
All related visualforce page are prefix with **VF4\_**

![ Visual Force 4 - Standard List Controller without Page Redirect](images/vf4.png?raw=true " Visual Force 4 - Standard List Controller without Page Redirect")

### Visual Force 5 - Visualforce with Javascript 

In this example we will use javascript inside the visualforce pages. 

![Visual Force 5 - Visualforce with Javascript ](images/vf5.png?raw=true "Visual Force 5 - Visualforce with Javascript ")

### Visual Force 6 - Visualforce  Javascript Math Calculations 

Use javascript functions with buttons and make some simple calculations. 

![Visual Force 6 - Visualforce  Javascript Math Calculations ](images/vf6.png?raw=true "Visual Force 6 - Visualforce  Javascript Math Calculations ")

### Visual force - Materializecss Example
This is an example usage of the external CSS and JS file. 
it includes **staticresources**. 

![Visual force - Materializecss Example](images/materiaize.png?raw=true "Visual force - Materializecss Example")


### Visual force - Calendly External Javascript
This is an example usage of the external JS file. 
it includes **staticresources**. 
Update your calendly url from visualforce page script tag.

![Visual force - Calendly External Javascript](images/calendly.png?raw=true "Visual force - Calendly External Javascript")



## Aura Lightning Component

### Aura1 - Simple Calculator without Attribute Tag

After deployment you should open AURA1 Application and click preview button.
You will see 2 inputbox, you need to write 2 number. Then click the button according to your calculations.
There is no any design system. Because of this you can see clean codes.

![Aura1 - Simple Calculator without Attribute Tag](images/a1.png?raw=true "Aura1 - Simple Calculator without Attribute Tag")


### Aura2 - Simple Calculator with Attribute Tag

After deployment you should open AURA2 Application and click preview button.
You will see 2 inputbox, you need to write 2 number. Then click the button according to your calculations.
But this time we will use attribute.
There is no any design system. Because of this you can see clean codes.

![LWC01 - Hello Component](images/a2.png?raw=true "Aura2 - Simple Calculator with Attribute Tag")


### Aura3 - Simple Calculator with Server Controller

After deployment you should open AURA3 Application and click preview button.
You will see 2 inputbox, you need to write 2 number. Then click the button according to your calculations.
But this time we will use Server Controller. Apex will do the calculation.
There is no any design system. Because of this you can see clean codes.

![Aura3 - Simple Calculator with Server Controller](images/a3.png?raw=true "Aura3 - Simple Calculator with Server Controller")


### Aura4 - Contact Create with Server Controller and Error Handling.

After deployment you should open AURA4 application and click preview button.
You will see contact details. Fill the details and click create contact button.
If you make null required field you will see the error on the screen.

![Aura4 - Contact Create with Server Controller and Error Handling](images/a4.png?raw=true "Aura4 - Contact Create with Server Controller and Error Handling")


### Aura5 - Contact Create with Server Controller and Lightning Component Styles

After deployment you should open AURA5 application and click preview button or
You can add this component into the lightning page with app builder by drag and drop this component.  
You will see contact creation component. Fill the details and click create contact button.
If you make null required field you will see the error on the screen.
You will see change on the UI this time. We will create our components either [Component Library](https://developer.salesforce.com/docs/component-library/overview/components) or [Lightnin Design System](https://www.lightningdesignsystem.com/)
After this component all aura component will have design like that.

![Aura5 - Contact Create with Server Controller and Lightning Component Styles](images/a5.png?raw=true "Aura5 - Contact Create with Server Controller and Lightning Component Styles")


### Aura6 - Contact Create and Contact Table

After deployment you should open AURA6 application and click preview button or
You can add this component into the lightning page with app builder by drag and drop this component.  
You will see contact creation component. Fill the details and click create contact button.  
Additionally you will going to see the latest 10 contact created.

![Aura6 - Contact Create and Contact Table](images/a6.png?raw=true "Aura6 - Contact Create and Contact Table")


### Aura7 - Pass Data From Ligtning Page to Aura

After deployment you should open AURA7 application and click preview button or
You can add this component into the lightning page with app builder by drag and drop this component.  
You will see latest contact list in a comboBox or listbox.

![Aura7 - Pass Data From Ligtning Page to Aura](images/a7.png?raw=true "Aura7 - Pass Data From Ligtning Page to Aura")


### AURA8 - Work with APEX Properties into Aura

After deployment you should open AURA8 application and click preview button or
You can add this component into the lightning page with app builder by drag and drop this component.  
You will also see **lightning Data Table Example with multi Selection**

![AURA8 - Work with APEX Properties into Aura](images/a8.png?raw=true "AURA8 - Work with APEX Properties into Aura")


### AURA9 - Design Component and Pass Data into AURA

After deployment you should open AURA9 application and click preview button or
You can add this component into the lightning page with app builder by drag and drop this component.  
We suggest that use this component into the lightning page.
You will see the parameters section when you are drag and drop this component into the lightning page.
When you write account this will show account records, when you write opportunity this will list opportunity records.

![AURA9 - Design Component and Pass Data into AURA](images/a9.png?raw=true "AURA9 - Design Component and Pass Data into AURA")


### AURA10 - Dynamic Record Show with Object Picklist

After deployment you should open AURA10 application and click preview button or
You can add this component into the lightning page with app builder by drag and drop this component.  
We suggest that use this component into the lightning page.
You will see the parameters section when you are drag and drop this component into the lightning page.
Difference with **AURA9** is there is a picklist which show all salesforce objects.
This component is a detailed apex file.

![AURA10 - Dynamic Record Show with Object Picklist](images/a10.png?raw=true "AURA10 - Dynamic Record Show with Object Picklist")


### AURA11 - Lightning Data Service - 1

After deployment you should open AURA11 application and click preview button or
You can add this component into the lightning page with app builder by drag and drop this component.  
We suggest that use this component into the lightning page.
You will not see any client controller or apex controller but you will see that there is a huge job to create account or update. This a kind of standard controller in visualforce.

![AURA11 - Lightning Data Service - 1](images/a11.png?raw=true "AURA11 - Lightning Data Service - 1")


### AURA12 - Aura Method

We will use aura method to pass data from one aura component to another component.
We can pass attribute string,integer,function etc.

![AURA12 - Aura Method](images/a12.png?raw=true "AURA12 - Aura Method")


### AURA13 - Aura Application Event

We create Aura Application, **Application Event**, Component1 and Component2. One of the component do some action and other component will be informed about this. All component in the same application will be informed about this event.

![LWC01 - Hello Component](images/a13.png?raw=true "AURA13 - Aura Application Event")


### AURA14 - Message Channel
For this example we use the messagechannel So you should check the **messageChannels** folder and **mc.messageChannel-meta.xml** file.  Also we have two component prefix with Aura14. One is **publisher** other one is **subscriber** . Publisher send payload message by using message channel and subscriber is receiving this message.

![LWC01 - Hello Component](images/a14.png?raw=true "AURA14 - Message Channel")


### AURA15 - Message Channel and Account List Navigation ( Split View like UI)
For this example we use the messagechannel So you should check the **messageChannels** folder and **mc.messageChannel-meta.xml** file.  Also we have two component prefix with Aura14. One is **publisher** other one is **subscriber** . Publisher send payload message by using message channel and subscriber is receiving this message. We are sending Record id of the selected account, and subscriber component will receive this record id and show the related account details by using **Lightning Data Service**.

![LWC01 - Hello Component](images/a15.png?raw=true "AURA15 - Message Channel ")


### LWC01 - Hello Component
This is the first LWC Component. 

![LWC01 - Hello Component](images/lWC01_HelloComponent.png?raw=true "LWC01 - Hello Component")
![LWC01 - Hello Component](images/lwc1.png?raw=true "LWC01 - Hello Component")



### LWC02 - Track and API Decorators
Track decorator is not an obligation after Spring 20 update but still can be used for some place. Object data must be used track decorator.

![LWC02 - Track and API Decorators](images/lwc2.png?raw=true "LWC02 - Track and API Decorators")

### LWC03 - WIRE Decorator
This get data from apex controller. Just retrieve the Last 10 Account records. 
Apex controller method must be annotate with **@AuraEnabled(cacheable=true)**


![LWC03 - WIRE Decorator](images/lwc3.png?raw=true "LWC03 - WIRE Decorator")

### LWC04 - With and Without WIRE Decorator
This will show the difference **with / without** wire decorator call apex controller. 
Plus we will use **Lightning-datatable** for showing the records.
If you are using without wiring you should make apex aura annotation without cacheble true.
**@AuraEnabled(cacheable=true) : with WIRE**
**@AuraEnabled : without WIRE**


![LWC04 - With and Without WIRE Decorator](images/lwc4.png?raw=true "LWC04 - With and Without WIRE Decorator")


### LWC05 - Call Apex for Simple Calculator
This will pass the parameters what apex asks and get the returned result that pass these data to the LWC UI.


![LWC05 - Call Apex for Simple Calculator](images/lwc5.png?raw=true "LWC05 - Call Apex for Simple Calculator")


### LWC06 - Lightning Data Service Create Records without APEX
Create Account with LDS
ShowToastEvent
NavigationMixin usages.


![LWC06 - Lightning Data Service Create Records without APEX](images/lwc6.png?raw=true "LWC06 - Lightning Data Service Create Records without APEX")


### LWC07 - Quick Update with lightning-record-form
Read recordid from the page. **ACCOUNT**
Update account record with lightning-record-form
Show toast message for succesfully update operation.


![LWC07 - Quick Update with lightning-record-form](images/lwc7.png?raw=true "LWC07 - Quick Update with lightning-record-form")


### LWC08 - Quick Update with lightning-record-form
Read recordid from the page. **CONTACT**
Update account record with lightning-record-form
Show toast message for succesfully update operation.


![LWC08 - Quick Update with lightning-record-form](images/lwc8.png?raw=true "LWC08 - Quick Update with lightning-record-form")


### LWC09 - MAP on the Contact Records
**Map** and **Wire** Decorator to collect the contact data.
```
import { getRecord } from 'lightning/uiRecordApi';
```

![LWC09 - MAP on the Contact Records](images/lwc9.png?raw=true "LWC09 - MAP on the Contact Records")

### LWC10 - LWC and AURA interoperability
Colorpickerlwc10 is a child component and only has a color picker. When you select a color
it fire an event. Aura component is parent component and when an event fired it will get this and conver the color of the text. There is also aura app to see the preview. All component contain **LWC10** term. 


![LWC10 - LWC and AURA interoperability](images/lwc10a.png?raw=true "LWC10 - LWC and AURA interoperability")
![LWC10 - LWC and AURA interoperability](images/lwc10b.png?raw=true "LWC10 - LWC and AURA interoperability")


### LWC11 - LWC Barcod Scanned Template.
It's empty barcod scanner template. You can valid barcods and see the results on lightning-card as a simple text. But you can create more efficient projects with them. Such as super market stock management or creating billing by only scanning the product barcods. Its up to your imagination.


![ LWC11 - LWC Barcod Scanned Template.](images/lwc11.png?raw=true " LWC11 - LWC Barcod Scanned Template.")

### LWC12 - Communication between parent and child.
From Parent to child @api decorator is enough but if you want to send data from child to parent you have to use Custom Event.
https://developer.salesforce.com/docs/component-library/documentation/en/lwc/reference_decorators
https://developer.salesforce.com/docs/component-library/documentation/en/lwc/lwc.events


![LWC12 - Communication between parent and child.](images/lwc12.png?raw=true "LWC12 - Communication between parent and child.")


### LWC13 - Communication between independent component.
Lightning Message Channel.
You should check the file inside the messageChannels folder also. You can't create it on salesforce setup currently.
https://developer.salesforce.com/docs/component-library/documentation/en/lwc/lwc.use_message_channel


![LWC13 - Communication between independent component.](images/lwc13.png?raw=true "LWC13 - Communication between independent component.")


### LWC14 - Simple TODO Application Single Component
Simple todo application to learn array and spread operator and LWC for Each iteration.  Furthermore you can use Enter, Shift + Enter and Ctrl + Enter keys to increase productivity. 


![LWC14 - Simple TODO Application Single Component](images/lwc14.png?raw=true "LWC14 - Simple TODO Application Single Component")


### LWC15 - Design Properties
This example shows how to use design properties.Please check **xml** file to learn more.
**Title** and **Description** are LWC design properties. When you add these properties you should assign a target to use the properties. Our example is Digital Experience site. You should add **lightningCommunity__Page** and **lightningCommunity__Default** for targets section and use targetconfig for **lightningCommunity__Default**.
You can use this component on digital experience sites right now. 
Additionally we add some css and html to change the appearance of the component. 

![LWC15 - Design Properties](images/lwc15DX.png?raw=true "LWC15 - Design Properties")



### LWC16 - Create Pickist ( Combobox ) from Salesforce Records
This component retreive account data and show as a combobox. Standard combobox has only label and value option. Bu with Javascript we will add another field **Industry** and handleChange method with the help of the array filter can help us to return more than one value just as **FLOW.**
**LWC16** prefix apex also help to create this component. 

![LWC 16 Combobox Component](images/lwc16.png?raw=true "LWC 16 Combobox Component")


### LWC17 - Record Edit Form For DX Guest User
It may be also used internal Salesforce and Experience Cloud even Guest Users.


![LWC17 - Record Edit Form For DX Guest User](images/lwc17.png?raw=true "LWC17 - Record Edit Form For DX Guest User")
![LWC17 - Record Edit Form For DX Guest User](images/lwc17a.png?raw=true "LWC17 - Record Edit Form For DX Guest User")
![LWC17 - Record Edit Form For DX Guest User](images/lwc17b.png?raw=true "LWC17 - Record Edit Form For DX Guest User")


### LWC18 - Record Edit Form with Combobox
Combobox is not natively part of the Lightning Record Edit Form but in this example we put the combobox inside the record edit form. Then we can populate a standard or custom field of the object.  In this example sales representative can select the product on lead creation. 


![LWC18 - Record Edit Form with Combobox](images/lwc18.png?raw=true "LWC18 - Record Edit Form with Combobox")
