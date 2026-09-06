# Salesforce Dairy Farming CRM

A Salesforce DX portfolio project for managing dairy farmers, cattle, milk production, veterinary activities, feed records, and farm operations.

## Business workflow
`Farmer -> Farm -> Cattle -> Milk Production -> Veterinary/Feed -> Reports`

## Included
- Custom Salesforce objects and fields
- Apex service layer
- Trigger for production validation
- Test classes
- Lightning Web Component dashboard
- Permission set
- Sample data plan

## Salesforce DX
Install Salesforce CLI, authenticate to a sandbox/dev org, then:

```bash
sf org login web --alias dairy-dev
sf project deploy start --source-dir force-app --target-org dairy-dev
sf apex run test --target-org dairy-dev --test-level RunLocalTests
```

## Data model
- `Farmer__c` — farmer/contact details
- `Farm__c` — farm and capacity information
- `Cattle__c` — animal identification and health status
- `Milk_Production__c` — daily production records

## Important
This repository contains deployable Salesforce metadata intended as a portfolio/reference implementation. It does not claim to contain proprietary customer data or a production org configuration.