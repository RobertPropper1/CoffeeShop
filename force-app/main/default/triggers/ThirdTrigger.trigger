trigger ThirdTrigger on Coffee_Ingredients__c (before insert, before update) {

    for(Coffee_Ingredients__c CI : Trigger.new){
        if(CI.Days_Since_Arrival__c >= 7){
            CI.addError('Ingredient is way too old! Please Throw it out.');
        }
    }

}