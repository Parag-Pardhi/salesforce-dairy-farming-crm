@IsTest
private class MilkProductionServiceTest {
    @IsTest static void totalsAreCalculated() {
        List<Milk_Production__c> records = new List<Milk_Production__c>{
            new Milk_Production__c(Milk_Liters__c = 12),
            new Milk_Production__c(Milk_Liters__c = 8)
        };
        System.assertEquals(20, MilkProductionService.totalLiters(records));
    }

    @IsTest static void negativeProductionIsRejected() {
        Milk_Production__c record = new Milk_Production__c(Milk_Liters__c = -1);
        Test.startTest();
        Database.SaveResult result = Database.insert(record, false);
        Test.stopTest();
        System.assertEquals(false, result.isSuccess());
    }
}
