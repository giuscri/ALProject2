query 50100 "APIV1 - Vendor Purchases"
{
    QueryType = API;
    APIPublisher = 'banksealer';
    APIGroup = 'app1';
    APIVersion = 'v1.0';
    Caption = 'Vendor Purchases', Locked = true;
    EntityName = 'vendorPurchase';
    EntitySetName = 'vendorPurchases';

    elements
    {
        dataitem(QueryElement1; "Purchase Header")
        {
            column("payToName"; "Pay-to Name")
            {
                Caption = 'Pay-to Name', Locked = true;
            }

            column("payToAddress"; "Pay-to Address")
            {
                Caption = 'Pay-to Address', Locked = true;
            }
            column("payToAddress2"; "Pay-to Address 2")
            {
                Caption = 'Pay-to Address 2', Locked = true;
            }

            column("payToCity"; "Pay-to City")
            {
                Caption = 'Pay-to City', Locked = true;
            }

            column("orderDate"; "Order Date")
            {
                Caption = 'Order Date', Locked = true;
            }

            column("postingDate"; "Posting Date")
            {
                Caption = 'Posting Date', Locked = true;
            }

            column("currencyCode"; "Currency Code")
            {
                Caption = 'Currency Code', Locked = true;
            }

            column("vendorInvoiceNumber"; "Vendor Invoice No.")
            {
                Caption = 'Vendor Invoice No.', Locked = true;
            }

            column("documentDate"; "Document Date")
            {
                Caption = 'Document Date', Locked = true;
            }

            column("documentType"; "Document Type")
            {
                Caption = 'Document Type', Locked = true;
                ColumnFilter = documentType = const("INVOICE");
            }

            column("amount"; "Amount")
            {
                Caption = 'Amount', Locked = true;
            }

            column(bankAccount; "Bank Account")
            {
                Caption = 'Bank Account', Locked = true;
            }

            column(status; "Status")
            {
                Caption = 'Status', Locked = true;
            }

            column(paymentMethodCode; "Payment Method Code")
            {
                Caption = 'Payment Method Code', Locked = true;
            }

            dataitem(QueryElement2; "Vendor Bank Account")
            {
                DataItemLink = "Code" = QueryElement1."Bank Account";
                SqlJoinType = LeftOuterJoin;

                column(bankAccountNumber; "Bank Account No.")
                {
                    Caption = 'Bank Account No.', Locked = true;
                }
            }
        }
    }
}
