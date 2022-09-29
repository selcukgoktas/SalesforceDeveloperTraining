/**
 * @description       : This is a test Class to test the BusinessToCustommer apex class test.
 * @author            : Selçuk GÖKTAŞ
 * @group             : 
 * @last modified on  : 09-29-2022
 * @last modified by  : Selçuk GÖKTAŞ
**/
@isTest
public with sharing class BusinessToCustommerTest {
    
    @TestSetup
    public static void setup() {

        BusinessToCustommer b2c = New BusinessToCustommer();

        b2c.create('Selçuk','Göktaş');

    }


    @isTest
    public static void createTest1(){
        Account testAcc = [SELECT id, Name FROM Account];

        Contact testCon = [SELECT id, FirstName, LastName,accountid FROM Contact];

        System.assertEquals('Selçuk', testCon.FirstName);
        System.assertEquals('Göktaş', testCon.LastName);
        System.assertEquals('Selçuk Göktaş', testAcc.Name);
        System.assertEquals(testAcc.id, testCon.accountid);
        
    }



}
