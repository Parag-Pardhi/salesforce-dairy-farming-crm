trigger MilkProductionTrigger on Milk_Production__c (before insert, before update) {
    MilkProductionService.validateRecords(Trigger.new);
}
