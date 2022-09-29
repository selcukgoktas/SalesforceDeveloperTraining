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

        List<String> testAccCon = New List<String>{
            'Selcuk Goktas',
            'Ahmet Emin Algıç',
            'Gökhan Aydın'
        };

        BusinessToCustommer b2c = New BusinessToCustommer();

        b2c.create(testAccCon);

    }


    @isTest
    public static void createTest1(){
        List<Account> testAccs = [SELECT id, Name FROM Account];
        List<String> accNames = New List<String>();
        List<String> accids = New List<String>();



        for (Account acc:testAccs){
            accNames.add(acc.name);
            accids.add(acc.id);

        }

        List<Contact> testCons = [SELECT id, name,accountid FROM Contact];

        for(Contact tcon:testCons){
            Boolean Name_check=accNames.contains(tcon.name);
            
            Boolean accountid_check=accids.contains(tcon.accountid);

            System.assertEquals(true, Name_check);
        
            System.assertEquals(true, accountid_check);

        }

      
        
    }

    



}
