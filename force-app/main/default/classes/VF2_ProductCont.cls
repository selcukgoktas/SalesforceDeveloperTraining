/**
* @description       : 
* @author            : Selçuk GÖKTAŞ
* @group             : 
* @last modified on  : 07-03-2022
* @last modified by  : Selçuk GÖKTAŞ
**/




public class VF2_ProductCont {
    
    Public Boolean ShowAddProduct{get;set;}
    Public String ProductName{get;set;}
    Public Decimal ProductPrice{get;set;}
    Public String pbookid {get;set;}
    Public String spbookid {get;set;}
    
    public VF2_ProductCont(ApexPages.StandardController controller){
        Pricebook2 pb=[SELECT Id, IsDeleted, Name, CreatedDate, CreatedById, LastModifiedDate, LastModifiedById, SystemModstamp, LastViewedDate, LastReferencedDate, IsActive, IsArchived, Description, IsStandard FROM Pricebook2 WHERE IsActive=True and Name LIKE '%Standard%' LIMIT 1]; 
        Pricebook2 spb=[SELECT Id, IsDeleted, Name, CreatedDate, CreatedById, LastModifiedDate, LastModifiedById, SystemModstamp, LastViewedDate, LastReferencedDate, IsActive, IsArchived, Description, IsStandard FROM Pricebook2 WHERE Name= 'Standard Price Book' LIMIT 1]; 
        
        
        pbookid=pb.id;
        spbookid=spb.id;


        ShowAddProduct=false;
    }
    
    // button control
    public void newProduct(){
        ShowAddProduct=true;
    }
    
    // button control
    public void newCancel(){
        ShowAddProduct=false;
    }
    
    // record operation
    public Pagereference SaveProduct(){
        
        // add product to product
        Product2 prd = New Product2();
        
        prd.name=ProductName;
        prd.IsActive=true;
        
        insert prd;
        
        PricebookEntry pbe= New PricebookEntry();
        
        System.debug('pbookid : '+pbookid);
        
        
        pbe.Pricebook2Id=spbookid;
        pbe.Product2Id=prd.id;
        pbe.UnitPrice=ProductPrice;
        pbe.IsActive=true;
        
        insert pbe;

        PricebookEntry pbe2= New PricebookEntry();
        pbe2.Pricebook2Id=pbookid;
        pbe2.Product2Id=prd.id;
        pbe2.UnitPrice=ProductPrice;
        pbe2.IsActive=true;
        
        insert pbe2;
        
        
        
        ShowAddProduct=false;


        Pagereference ref=Apexpages.currentPage();
        ref.setRedirect(true);

        return ref;
    }
    
    
}