trigger FirstTrigger on Location__c (after insert, after update) {

    Utility__c Uti = new Utility__c();
    Uti.Name = Trigger.new[0].Name;
    Uti.Address__c = Trigger.new[0].Address__c;
    Uti.Active__c = True;
    insert Uti;
}