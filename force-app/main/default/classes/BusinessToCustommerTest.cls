/**
 * @description       : This is a test Class to test the BusinessToCustommer apex class test.
 * @author            : Selçuk GÖKTAŞ
 * @group             : 
 * @last modified on  : 09-30-2022
 * @last modified by  : Selçuk GÖKTAŞ
**/
@isTest
public with sharing class BusinessToCustommerTest {
    
    @TestSetup
    public static void setup() {

        BusinessToCustommer b2c = New BusinessToCustommer();
        
        List<String> listOfCustomerTEST = New List<String>();
        
        for(Integer counter=1;counter<=10;counter++){
            
            listOfCustomerTEST.add('Test '+counter+' Test'+counter);
        }
        
        b2c.create(listOfCustomerTEST); 

    }


    @isTest
    public static void create2ParamsTest1(){
      
        
        Test.startTest();
  
        List<Contact> multiAccConTest =[SELECT id, Account.id, Account.name, name, firstName,lastName,Accountid FROM Contact];   // child to parent 
       
        
        for(Contact singleTest:multiAccConTest){
            
            System.debug('Test Class : '+singleTest);
            
            System.assertEquals(singleTest.Account.id, singleTest.Accountid);
        	System.assertEquals(singleTest.Account.name, singleTest.name);
            System.assert(string.isNotBlank(singleTest.Accountid));
            System.assert(string.isNotBlank(singleTest.Account.id));
           
        }
        
        
		Test.stopTest();        
         
    }
    

    



}