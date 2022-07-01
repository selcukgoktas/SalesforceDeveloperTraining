/**
 * @description       : 1 - Visual Force Simple Project 
 * @author            : Selçuk GÖKTAŞ
 * @group             : 
 * @last modified on  : 07-01-2022
 * @last modified by  : Selçuk GÖKTAŞ
**/

public class VF1_AccountContactController {
    
    public Integer totalCount {get;set;}
    public List<Account> multiAcc {get;set;}
    public String namePrefix {get;set;}
    public String containName {get;set;}
    
    public String fName {get;set;}
    public String lName {get;set;}
    
      public String sfName {get;set;}
    public String slName {get;set;}
    
    public List<Contact> multiContact {get;set;}
    
    
    public VF1_AccountContactController(){
        system.debug('Construction......'); 
        
        multiAcc=New List<Account>();
        multiContact=New List<Contact>();
        
        totalCount=0;
        
        System.debug(' Total Count : '+totalCount);
        System.debug(' multiAcc : '+multiAcc);
        System.debug(' multiContact : '+multiContact);
        
        
    }
    
    public void create(){
        System.debug('Account are Creating .... '+totalCount);
        
         multiAcc.clear();
        
        if(String.isBlank(namePrefix)){
            namePrefix='VF - Test Account';
        }
        
        if((totalCount>200) || (totalCount<=0)){
            
            totalCount=10;
           
           
        }
        
        
        if(!(totalCount==0) && !(totalCount==null)){
            for(Integer i=1;i<=totalCount;i++){
                Account singleAcc = New Account();
                singleAcc.name= namePrefix + ' '+i;
                multiAcc.add(singleAcc);
                System.debug('VF - Test Account '+i);
                
            }
            
            insert multiAcc;
            
        }
        
        
    }
    
    public void searchAccountName(){
        
        if(String.isNotBlank(containName)){
            
            String SearchLike = '%'+containName+'%';
            multiAcc = [SELECT id, Name, Phone FROM Account WHERE Name Like :SearchLike LIMIT 200];
        }
        
        
        
    }
    
    public void DeleteAccount(){
        
        if(String.isNotBlank(containName)){
            searchAccountName();
            
            delete multiAcc;
            multiAcc.clear();
        }
        
        
    }
    
    
    
    public void createContact(){
        
        System.debug('Create Contact .... ' + totalCount);

		System.debug('firstName .... ' + fName);    
        System.debug('lastName .... ' + lName);    
        
        
        if(String.isBlank(lName)){
            lName='VF LastName';
        }
        
        if(String.isBlank(fName)){
            fName='VF firstName';
            
        }
        
         if((totalCount>200) || (totalCount<=0)){
            
            totalCount=10;
        }
        
        multiContact.clear();
        
        if(!(totalCount==0) && !(totalCount==null)){
            for(Integer i=1;i<=totalCount;i++){
                Contact singleContact = New Contact();
                singleContact.firstName= fName + ' '+i;
                singleContact.lastName=lName + ' '+i;
                multiContact.add(singleContact);
                System.debug(singleContact.firstName +' '+ singleContact.lastName);
                
            }
            
            insert multiContact;
        
        
        
        }
    
    
    }
    
    
    
    public void searchContact(){
        
        if(String.isNotBlank(sfName) || String.isNotBlank(slName) ){
            
            String Searchfirst = '%'+sfName+'%';
            String Searchlast = '%'+slName+'%';
            
            multiContact = [SELECT id, FirstName,LastName, Phone FROM Contact WHERE FirstName Like :Searchfirst AND LastName Like :SearchLast LIMIT 200];
        }
        
        
        
    }
    
    
    public void DeleteContact(){
        
        if(String.isNotBlank(fName) || String.isNotBlank(lName) ){
            searchContact();
            
            delete multiContact;
            multiContact.clear();
        }
        
        
    }
    
    
    
}