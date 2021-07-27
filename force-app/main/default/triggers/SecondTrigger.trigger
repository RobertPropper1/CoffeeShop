trigger SecondTrigger on Coffee_Sold__c (before insert, before update) {

    List<Sales__c> SName = [SELECT Name FROM Sales__c];
    List<Coffee_Sold__c> CName = [SELECT Sales__c FROM Coffee_Sold__c];
    for(Coffee_Sold__c CS : Trigger.new ){

        if(String.IsBlank(CS.Bulk_Buyer__c) == True){
                // Want to use Sales Name instead of No Name Provided.
                //SecondTriggerHelper STH = new SecondTriggerHelper();
            for(Sales__c SC : SName){
                
                if(CS.Sales__c == SC.Id){
                    string BB = SC.Name;
                    CS.Bulk_Buyer__c = BB;
                    

                }
                
                    
                }
            }
            
        }

     }
                
                
            