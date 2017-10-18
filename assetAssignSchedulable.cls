global class assetAssignSchedulable implements Schedulable {
    global void execute(SchedulableContext SC){
        Database.executeBatch(new assetAssignBatch()); 
    }
}
