@IsTest
private class DairyDashboardControllerTest {
    @IsTest static void summaryHandlesEmptyOrg() {
        Test.startTest();
        DairyDashboardController.DashboardSummary result = DairyDashboardController.getSummary();
        Test.stopTest();
        System.assertEquals(0, result.farmers);
        System.assertEquals(0, result.farms);
        System.assertEquals(0, result.cattle);
        System.assertEquals(0, result.totalMilkLiters);
    }
}
