global class assetActiveBatch implements Database.Batchable <sObject>{
    
    global Database.QueryLocator start(Database.BatchableContext BC){
        String allAccts = 'SELECT Id, of_Active_Devices__c FROM Account';
        return Database.getQueryLocator(allAccts); 
    }
    
    global void execute(Database.BatchableContext BC, List<Account> allAccts){
       for(Account act : allAccts){
        List<Asset> asset = [SELECT Id, Account.Id, Status FROM Asset WHERE Account.Id =: act.Id AND Status =: 'Active'];
        act.of_Active_Devices__c =  asset.size();
               
    }
    update allAccts; 
  } 
    
    
    
    global void finish(Database.BatchableContext BC){
        
    }
      
      
}
