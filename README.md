# Salesforce Dairy Farming CRM

A Salesforce DX portfolio/reference project for managing farmers, farms, cattle, and milk production.

## Business workflow
`Farmer → Farm → Cattle → Milk Production → Dashboard`

## Included
- Custom Salesforce objects and fields
- Lookup relationships between the core records
- Apex service layer for milk validation and aggregation
- Trigger for production validation
- Apex test classes
- Lightning Web Component operations dashboard
- Manager permission set

## Data model
| Object | Purpose |
|---|---|
| `Farmer__c` | Farmer identity and contact details |
| `Farm__c` | Farm records and acreage |
| `Cattle__c` | Animal records and health status |
| `Milk_Production__c` | Milk production measurements |

Relationships:
- Farm → Farmer
- Cattle → Farm
- Milk Production → Cattle

## Validation and dashboard
- Negative `Milk_Liters__c` values are rejected by Apex trigger/service logic.
- Dashboard aggregates farmer, farm, cattle, and total milk counts/volume.
- LWC is exposed to App, Home, and Record pages.

## Deploy
Install Salesforce CLI and authenticate to a sandbox/dev org:

```bash
sf org login web --alias dairy-dev
sf project deploy start --source-dir force-app --target-org dairy-dev
sf apex run test --target-org dairy-dev --test-level RunLocalTests
```

## Important scope
This is a portfolio/reference implementation. A real production deployment should add org-specific sharing rules, validation policies, field-level security, automation governance, monitoring, and business-approved data retention controls. No proprietary customer data is included.
