/**
 * @description       : 
 * @author            : Selçuk GÖKTAŞ
 * @group             : 
 * @last modified on  : 02-24-2023
 * @last modified by  : Selçuk GÖKTAŞ
**/
public with sharing class lwc18ProductController {
    public lwc18ProductController() {

    }

    @AuraEnabled(cacheable=true)
    public static List<Product2> retrieve(){

        List<Product2> multiProduct = New List<Product2>();
        try {
            multiProduct=[SELECT Id, Name, ProductCode, Description, IsActive, Family FROM Product2];
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
        return multiProduct;
    }
}