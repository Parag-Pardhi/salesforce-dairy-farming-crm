public with sharing class DairyDashboardController {
    @AuraEnabled(cacheable=true)
    public static DashboardSummary getSummary() {
        DashboardSummary summary = new DashboardSummary();
        summary.farmers = [SELECT COUNT() FROM Farmer__c];
        summary.farms = [SELECT COUNT() FROM Farm__c];
        summary.cattle = [SELECT COUNT() FROM Cattle__c];
        AggregateResult[] milk = [SELECT SUM(Milk_Liters__c) total FROM Milk_Production__c];
        summary.totalMilkLiters = milk.isEmpty() || milk[0].get('total') == null ? 0 : (Decimal) milk[0].get('total');
        return summary;
    }

    public class DashboardSummary {
        @AuraEnabled public Integer farmers;
        @AuraEnabled public Integer farms;
        @AuraEnabled public Integer cattle;
        @AuraEnabled public Decimal totalMilkLiters;
    }
}
