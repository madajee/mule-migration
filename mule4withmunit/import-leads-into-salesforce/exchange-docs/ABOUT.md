

PR Summary:
Test passed: 2/2

Scenario 1: Test passed
Scenario 2: Test passed


```markdown
Overall application coverage: 91.67%

Resource File: import-leads-into-salesforce.xml - Coverage: 91.67%

Components within the file:

| Name                      | Type     | Covered (P) | Total (P) | Coverage |
|---------------------------|----------|-------------|-----------|----------|
| get-lead-by-email-subflow | Sub flow |      1      |     1     | 100.00%  |
| CreateLeadsBatch          | Flow     |     10      |    11     |  90.91%  |
```


---


### Test Scenario-1


#### Description

Happy path test case for creating 10 leads successfully where none of the leads already exist in Salesforce.


#### Behavior

• Mock the File listener to trigger the flow with a CSV file containing 10 lead records
• Set event payload with CSV data containing 10 leads with Company, Email, FirstName, and LastName fields
• Mock the Salesforce query in get-lead-by-email-subflow to return empty results (no existing leads found) for all 10 leads
• Mock the Salesforce create operation in LeadInsertStep to return successful creation response for all 10 leads


#### Execution

• Execute the CreateLeadsBatch flow
• Allow the flow to process through the file listener, transform CSV to maps, and execute the batch job
• Let the batch process all records through LeadExistsStep and LeadInsertStep


#### Validation

• Verify that the CSV to Maps transformation is executed
• Verify that get-lead-by-email-subflow is called 10 times (once for each lead)
• Verify that the Salesforce query operation is invoked 10 times
• Verify that the Salesforce create operation is called once with aggregated records
• Verify that the Before Insert Logger and After Insert Logger are called
• Verify that the batch on-complete logger shows 10 loaded records and 0 failed records
• Verify that LogFailuresStep is not executed



---


### Test Scenario-2


#### Description

Partial success test case where some leads are created successfully but some leads encounter errors during Salesforce creation.


#### Behavior

• Mock the File listener to trigger the flow with a CSV file containing multiple lead records
• Set event payload with CSV data containing lead records with Company, Email, FirstName, and LastName fields
• Mock the Salesforce query in get-lead-by-email-subflow to return empty results (no existing leads found) for all leads
• Mock the Salesforce create operation in LeadInsertStep to return partial success response with some successful creations and some failures


#### Execution

• Execute the CreateLeadsBatch flow
• Allow the flow to process through the file listener, transform CSV to maps, and execute the batch job
• Let the batch process records through LeadExistsStep, LeadInsertStep, and LogFailuresStep for failed records


#### Validation

• Verify that the CSV to Maps transformation is executed
• Verify that get-lead-by-email-subflow is called for each lead record
• Verify that the Salesforce query operation is invoked for each record
• Verify that the Salesforce create operation is called with aggregated records
• Verify that the Before Insert Logger and After Insert Logger are called
• Verify that LogFailuresStep is executed for failed records
• Verify that the Log Failure logger is called for failed records
• Verify that the batch on-complete logger shows both loaded and failed record counts
