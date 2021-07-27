trigger TestTrigger on SOBJECT (after insert,after update) {
    if(Trigger.isInsert && Trigger.isAfter){
        for(Coffee_Sold__c Cof : Trigger.new){
            Cof.Bulk_Buyer__c = Cof.Sales__r.Name;
        }
    }
}