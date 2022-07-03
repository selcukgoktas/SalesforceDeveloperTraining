/**
 * @description       : 
 * @author            : Selçuk GÖKTAŞ
 * @group             : 
 * @last modified on  : 07-03-2022
 * @last modified by  : Selçuk GÖKTAŞ
**/

public with sharing class VF2_OppLineItemsCont {

    private Id oppId=ApexPages.currentPage().getParameters().get('id');
    public List<OpportunityLineItem> OLI;
    public List<PricebookEntry> ProductList;
    public List<PricebookEntry> addProductList;
    public String pricebookid {get;set;}

    
     List<OpportunityLineItem> addOLI = New List<OpportunityLineItem>();
    public String[] Products= new String[]{}; 
   
   
   
       public VF2_OppLineItemsCont(ApexPages.StandardController controller) {
    
        if(oppId==null){
            system.debug('Opportunity id is NULL');
            oppId='0068d000007TyumAAC';

        }

       Pricebook2 pb=[SELECT Id, IsDeleted, Name, CreatedDate, CreatedById, LastModifiedDate, LastModifiedById, SystemModstamp, LastViewedDate, LastReferencedDate, IsActive, IsArchived, Description, IsStandard FROM Pricebook2 WHERE IsActive=True and Name LIKE '%Standard%' LIMIT 1]; 
       pricebookid=pb.id;
       ProductList=[SELECT Id, Name, Pricebook2Id, Product2Id, UnitPrice, IsActive FROM PricebookEntry WHERE Pricebook2Id=:pricebookid];
       OLI = [SELECT Id, OpportunityId, SortOrder, PricebookEntryId, Product2Id, TotalPrice, UnitPrice, ListPrice, Quantity, Name FROM OpportunityLineItem WHERE OpportunityId=:oppId];
      
   
       }
   
   
      
      
       
       public List<OpportunityLineItem> getOLI(){
           
      
            return OLI;
       }
       
       public List<SelectOption> getItems(){
       
       List<SelectOption> options = new List<SelectOption>();
       
           for(PricebookEntry entry:ProductList){
               options.add(new SelectOption(entry.Product2Id,entry.Name));
           }
                  
               
               
       
           return options;
       }
       
       
       
       public String[] getProducts() {
              
               return Products;
           }
     
      
      
      public void setProducts(String[] Products) {
             
               this.Products= Products;
           } 
       
       public PageReference saveLineItems(){
       
          upsert OLI;
          
           PageReference pageRef = new PageReference(ApexPages.currentPage().getUrl());
           pageRef.setRedirect(true);
           return pageRef;
                  
         
       
       }
       
       
       
        public PageReference addLineItems(){
        
       
       
        
        
           addProductList=[SELECT Id, Name, Pricebook2Id, Product2Id, UnitPrice, IsActive FROM PricebookEntry WHERE Pricebook2Id=:pricebookid AND Product2Id=:Products];
      
            for (PricebookEntry item:addProductList){
                OpportunityLineItem singleItem=New OpportunityLineItem();
                
                singleItem.OpportunityId=oppId;
                singleItem.PricebookEntryId=item.id;
                singleItem.Product2Id=item.Product2Id;
                singleItem.Quantity=1;
                singleItem.UnitPrice=item.UnitPrice;
                // singleItem.Name=item.Name;  ---- OpportunityLineItems Compile Error: Field is not writeable: OpportunityLineItem.Name 
                 
                
              
                addOLI.add(singleItem);
                
                  // system.debug(addOLI);
            
            }
        
        
       
           insert addOLI;
            
            
            
        
          PageReference pageRef = new PageReference(ApexPages.currentPage().getUrl());
           pageRef.setRedirect(true);
           return pageRef;
                  
         
       
       }
       
       
   
   }