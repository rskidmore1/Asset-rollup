@isTest
public class TestassetAssignBatch {
    static testMethod void testMethod1(){
         List<Account> lstAccount= new List<Account>();
        for(Integer i=0 ;i <200;i++)
        {
            Account acc = new Account();
            acc.Name ='Name'+i;
            acc.of_Assets_Assigned__c = 0; 
            lstAccount.add(acc);
        }  
        
        insert lstAccount;
        
        Test.startTest();

          assetAssignBatch obj = new assetAssignBatch();
          DataBase.executeBatch(obj); 
            
        Test.stopTest();
    }
}
