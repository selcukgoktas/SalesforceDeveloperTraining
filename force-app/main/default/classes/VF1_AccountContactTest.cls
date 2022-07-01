/**
 * @description       : 
 * @author            : Selçuk GÖKTAŞ
 * @group             : 
 * @last modified on  : 07-01-2022
 * @last modified by  : Selçuk GÖKTAŞ
**/

@isTest
public class VF1_AccountContactTest {

    @isTest
    public static void VF1_AccountContactControllerConstructorTest1(){
        VF1_AccountContactController tdc= New VF1_AccountContactController();
        Integer result=tdc.multiAcc.size();
        System.assertEquals(0, result);
        
        result=tdc.multiContact.size();
        System.assertEquals(0, result);
        
        result=tdc.totalCount;
        System.assertEquals(0, result);
        
        
    }
    
    
      @isTest
    public static void createTest1(){
        VF1_AccountContactController tdc= New VF1_AccountContactController();
        tdc.namePrefix='';
        tdc.create();   
        String result=tdc.namePrefix;
        System.assertEquals('VF - Test Account', result);
        
        
    }
    
      @isTest
    public static void createTest2(){
        VF1_AccountContactController tdc= New VF1_AccountContactController();
        tdc.totalCount=201;
        tdc.create();   
        Integer result=tdc.totalCount;
        System.assertEquals(10, result);
        
        
    }
    
       @isTest
    public static void createTest3(){
        VF1_AccountContactController tdc= New VF1_AccountContactController();
        tdc.totalCount=-1;
        tdc.create();   
        Integer result=tdc.totalCount;
        System.assertEquals(10, result);
        
        
    }
    
      @isTest
    public static void createTest4(){
        VF1_AccountContactController tdc= New VF1_AccountContactController();
        tdc.totalCount=40;
        tdc.create();   
        Integer result=tdc.multiAcc.size();
        System.assertEquals(40, result);
        
       Test.startTest();
        
        
        List<Account> testAcc=[SELECT id FROM Account]; 
        
        Test.stopTest();
        
        result = testAcc.size();
        System.assertEquals(40, result);
        
        
    }
    
      @isTest
    public static void Search1(){
        VF1_AccountContactController tdc= New VF1_AccountContactController();
        tdc.totalCount=40;
        tdc.namePrefix='TESTTESTTEST'; // creating
        tdc.containName='TESTTESTTEST'; // searching
        tdc.create();         
      
        tdc.searchAccountName();
    
        Integer result=tdc.multiAcc.size();
        System.assertEquals(40, result);
       
        
    }
    
        @isTest
    public static void delete1(){
        VF1_AccountContactController tdc= New VF1_AccountContactController();
        tdc.totalCount=40;
        tdc.containName='TESTTESTTEST';
        tdc.create();         
      
        tdc.DeleteAccount();
        
        Integer result = tdc.multiAcc.size();
        System.assertEquals(0, result);
    }
    
    
    
       @isTest
    public static void createContactTest1(){
        VF1_AccountContactController tdc= New VF1_AccountContactController();
       	tdc.createContact();
        
        System.assertEquals('VF firstName', tdc.fName);
        System.assertEquals('VF LastName', tdc.lName);
    }
    
        @isTest
    public static void createContactTest2(){
        VF1_AccountContactController tdc= New VF1_AccountContactController();
        tdc.totalCount=-1;
       	tdc.createContact();
        
        System.assertEquals(10, tdc.totalCount);
        
        tdc.totalCount=201;
       	tdc.createContact();
        System.assertEquals(10, tdc.totalCount);
    }
    
    
    
    
     @isTest
    public static void searchContactTest1(){
        VF1_AccountContactController tdc= New VF1_AccountContactController();
        tdc.totalCount=30;
        tdc.fName='MY TEST';
        tdc.lname='YOUR RESULT';
       	tdc.createContact();
        
        tdc.sfName='MY';
        tdc.slName='YOUR';
        tdc.searchContact();
        
        System.assertEquals(30, tdc.multiContact.size());
       
         List<Contact> testmultiCont= [SELECT id,firstName,LastName FROM Contact WHERE firstName LIKE '%MY%' AND lastName LIKE '%YOUR%' ];
         System.assertEquals(30, testmultiCont.size());
        
       
    }
    
  
    
   @isTest
    public static void deleteContactTest1(){
        VF1_AccountContactController tdc= New VF1_AccountContactController();
        tdc.totalCount=30;
        tdc.fName='MY TEST';
        tdc.lname='YOUR RESULT';
       	tdc.createContact();
       
        tdc.DeleteContact();
        System.assertEquals(0, tdc.multiContact.size());
        
        List<Contact> testmultiCont= [SELECT id FROM Contact];
         System.assertEquals(0, testmultiCont.size());
        
        
        
       
    }
    
    
    
}