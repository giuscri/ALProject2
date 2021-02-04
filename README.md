# POC for API Query in Microsoft Dynamics 365 Business Central

* In VSCode, run (ctrl-shift-p) `AL: Download symbols`. It will allow you to navigate tables by ctrl-clicking on the names
```
...
    EntityName = 'vendorPurchase';
    EntitySetName = 'vendorPurchases';

    elements
    {
        dataitem(QueryElement1; "Purchase Header") // ctrl-click on "Purchase Header"
        {
            column("payToName"; "Pay-to Name")
...
```
* Run `AL: Publish without debugging` for the extension to be loaded in the sandbox environment. Wait for the browser to open.
* Issue an HTTP GET to the endpoint where
    * `access-key` can be retrieved from the _Users_ page (click on the magnifying glass icon to search for pages)
    * `company-id` can be retrieved from the standard REST API https://docs.microsoft.com/en-us/dynamics-nav/api-reference/v1.0/api/dynamics_companies_get
    * `tenant-id` can be retrieved from the _admin center_ (click on the gear icon)
```
curl --basic -u GIUSEPPE.CRINO:<access-key>  "https://api.businesscentral.dynamics.com/v1.0/<tenant-id>/sandbox/api/banksealer/app1/v1.0/companies(<company-id>)/vendorPurchases"
```

## TODO
* Filter the query based on the id of the invoices
    * What we receive from the poke on the webhook is the id of the items that changed (or that has been created)
    * Hence, we need to query only for those data
* Understand if we're querying the right table. We probably want an invoice, but what about a _posted_ invoice?
