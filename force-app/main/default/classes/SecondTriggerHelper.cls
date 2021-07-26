public with sharing class SecondTriggerHelper {

     public static Sales__c GetName(){
        List<Sales__c> SName = new List<Sales__c>();
        SName.add([SELECT Name FROM Sales__c]);
         return SName[0];
    }
}
