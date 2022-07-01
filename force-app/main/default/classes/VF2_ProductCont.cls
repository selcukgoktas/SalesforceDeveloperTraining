/**
 * @description       : 
 * @author            : Selçuk GÖKTAŞ
 * @group             : 
 * @last modified on  : 07-01-2022
 * @last modified by  : Selçuk GÖKTAŞ
**/




public class VF2_ProductCont {
    
    Public Boolean ShowAddProduct{get;set;}
    Public String ProductName{get;set;}
    Public Decimal ProductPrice{get;set;}
    
    public VF2_ProductCont(ApexPages.StandardController controller){
        ShowAddProduct=false;
    }
    
    public void newProduct(){
         ShowAddProduct=true;
    }
    
     public void newCancel(){
         ShowAddProduct=false;
    }
    
     public void SaveProduct(){
         ShowAddProduct=false;
    }
    

}