public with sharing class MilkProductionService {
    public static void validateRecords(List<Milk_Production__c> records) {
        for (Milk_Production__c record : records) {
            if (record.Milk_Liters__c != null && record.Milk_Liters__c < 0) {
                record.Milk_Liters__c.addError('Milk production cannot be negative.');
            }
        }
    }

    public static Decimal totalLiters(List<Milk_Production__c> records) {
        Decimal total = 0;
        for (Milk_Production__c record : records) {
            total += record.Milk_Liters__c == null ? 0 : record.Milk_Liters__c;
        }
        return total;
    }
}
