public with sharing class SecondTriggerHelper {

     public static String GetName(){

        List<Coffee_Sold__c> CName = [SELECT Sales__c FROM Coffee_Sold__c];
        List<Sales__c> SName = [SELECT Name FROM Sales__c];

        for(Coffee_Sold__c Cof : CName){
            for(Sales__c Sale : SName){
                if(Cof.Id == Sale.Id){
                    String SaleName = Sale.Name;
                    return SaleName;

                }
            
            }
        }
        return null;

        
         
    }
}
