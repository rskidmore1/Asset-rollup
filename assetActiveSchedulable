global class assetActiveSchedulable implements Schedulable {
    global void execute(SchedulableContext SC){
        Database.executeBatch(new assetActiveBatch()); 
    }
}
