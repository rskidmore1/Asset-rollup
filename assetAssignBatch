global class assetAssignBatch implements Database.Batchable <sObject>{
    //
    global Database.QueryLocator start(Database.BatchableContext BC){
        String allAccts = 'SELECT Id, of_Assets_Assigned__c FROM Account';
        return Database.getQueryLocator(allAccts); 
    }
    global void execute(Database.BatchableContext BC, List<Account> allAccts){
       for(Account act : allAccts){
        List<Asset> asset = [SELECT Id, Account.Id FROM Asset WHERE Account.Id =: act.Id];
        act.of_Assets_Assigned__c =  asset.size();
        
        
    }
    update allAccts; 
  } 
    
    
    
    global void finish(Database.BatchableContext BC){
        
    }
      
      
}
