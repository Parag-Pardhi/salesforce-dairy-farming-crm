import { LightningElement, wire } from 'lwc';
import getSummary from '@salesforce/apex/DairyDashboardController.getSummary';

export default class DairyDashboard extends LightningElement {
    summary;
    error;

    @wire(getSummary)
    wiredSummary({ data, error }) {
        if (data) {
            this.summary = data;
            this.error = undefined;
        } else if (error) {
            this.error = error;
            this.summary = undefined;
        }
    }
}
