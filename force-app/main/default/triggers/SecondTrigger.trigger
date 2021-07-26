trigger SecondTrigger on Coffee_Sold__c (before insert, before update) {
    
    for(Coffee_Sold__c CS : Trigger.new ){
        if (CS.Bulk_Buy__c == True){
            if(String.isBlank(CS.Bulk_Buyer__c) == True){
                CS.Bulk_Buyer__c = 'No Name Provided';
                
            }
        }

    }

}