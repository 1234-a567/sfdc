@IsTest
public class accounttriggerHelperTest{

/*@istest
public static void getcontactstest(){
}*/


public static testmethod void getcontactstest(){
list<account> acclist = new list<account>();
 Account acc = new Account(Name = 'Test Account',AccountNumber = '123',Type='Technology Partner',AccountSource='web');
        insert acc; // account trigger will execute in this lile before and after
      acclist.add(acc);
      
      Account acc2 = new Account(Name = 'Test Account',AccountNumber = '123',Type='Technology Partner',AccountSource='web');
        insert acc2; // account trigger will execute in this lile before and after
      acclist.add(acc2);
      Contact testContact = new Contact(
            FirstName = 'John',
            LastName = 'Doe',
            Email = 'john.doe@example.com',
            AccountId = acclist[1].Id
        );
        insert testContact;
      accounttriggerHelper.getcontacts(acclist);
     
  }
  
 
public static testmethod void  deleteOKdeletContacstest(){
list<account>acclist=new list<account>();
Account acc = new Account(Name = 'anilll',AccountNumber = '1234',Type='Technology Partner');
insert acc;
acclist.add(acc);
accounttriggerHelper.deleteOKdeletContacs(acclist);
}
public static testmethod void assignWebsitetest(){
Account acc = new Account(Name = 'Test Account',AccountNumber = '123',AccountSource='web');
accounttriggerHelper.assignWebsite(acc);
}

public static  testmethod void createuserroletest(){
Test.startTest();
accounttriggerHelper.createuserrole();
Test.stopTest();
        UserRole ur = [SELECT Id, Name FROM UserRole WHERE Name = 'India Director' LIMIT 1];
        System.assertNotEquals(null, ur, 'User role should be created');
}
public static testmethod void updatecontactphonetest(){
Account acc = new Account(Name = 'Test A',AccountNumber = '123333',Type='Technology Partner',AccountSource='web');
        insert acc;
        update acc;
Contact testContact1 = new Contact(
            FirstName = 'John',
            LastName = 'Doe',
            Email = 'john.doe@example.com',
            AccountId =acc.id);
          insert testcontact1;
       accounttriggerHelper.updatecontactphone(acc.id);
}
}