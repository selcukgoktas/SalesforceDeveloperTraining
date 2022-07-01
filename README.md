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

### ASYNC Apex
Async apex has more governor limits. You can work with millions of data some of them. You can check details on the [this link](https://selcukgoktas.github.io/Salesforce-Developer-Guide/Salesforce%20Developer%20(Module)/APEX%20Async%2083ade181e8164901995d57ec616ae221.html)

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
All related visualforce page, apex class and test apex classes are prefix with **VF1_**

### Visual Force 2 - Create Billing from Opportunity
After you create this page you can add this as a button on the opportunity record details page.
When you click button it will redirect you Visualforce page with Account block. You can update account. 
Below the page you can see opportunity product list which include in the billing. 
It contains standard controller with extentions. 
All related visualforce page, apex classes  are prefix with **VF2_**

### Visual Force 3 - Standard List Controller
Bulk update available Standard list Controller visual force page example. 
All related visualforce page are prefix with **VF3_**

### Visual Force 4 - Standard List Controller without Page Redirect 
Bulk update available Standard list Controller visual force page example. 
All related visualforce page are prefix with **VF4_**


## Aura Lightning Component
### Aura1 - Simple Calculator without Attribute Tag
After deployment you should open AURA1 Application and click preview button.
You will see 2 inputbox, you need to write 2 number. Then click the button according to your calculations. 
There is no any design system. Because of this you can see clean codes. 


