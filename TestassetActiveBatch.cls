@isTest
public class TestassetActiveBatch {
    static testMethod void testMethod1(){
         List<Account> lstAccount= new List<Account>();
        for(Integer i=0 ;i <200;i++)
        {
            Account acc = new Account();
            acc.Name ='Name'+i;
            acc.of_Active_Devices__c = 0; 
            lstAccount.add(acc);
        }  
        
        insert lstAccount;
        
        Test.startTest();

          assetActiveBatch obj = new assetActiveBatch();
          DataBase.executeBatch(obj); 
            
        Test.stopTest();
    }
}
