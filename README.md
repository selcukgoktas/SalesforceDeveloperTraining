# Salesforce Developer Training

Selçuk GÖKTAŞ [Linkedin](https://www.linkedin.com/in/selcukgoktas/)

# Salesforce Developer Notes

[Visit Site](https://selcukgoktas.github.io/Salesforce-Developer-Guide/)

# Contents

## APEX

### Trigger1 - Empty Trigger template

You can use this trigger for every purpose. Just change the related object and use it.
It contains **switch when** expression. It's metadata file make this **trigger inactive**.
If you want to make this activated you should go to the object manager related object and check triggers is active or not.
You can also change metadata file to activate trigger before deployment.


### Trigger2 - Account Trigger
This is an interview Question for Google Salesforce Developer.



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

