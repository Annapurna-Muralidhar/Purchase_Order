//using {com.satinfotech.purchaseform as purchaseform} from '../db/schema';
using { CE_PURCHASEORDER_0001 as purchaseorderapi } from './external/CE_PURCHASEORDER_0001';

service PurchaseOrderService {

    entity PurchaseOrderSrv as projection on purchaseorderapi.PurchaseOrder{
        PurchaseOrder,
        Language,
        PurchasingOrganization as Company,
        CompanyCode,
        PaymentTerms,
        PurchaseOrderDate,
        TaxReturnCountry as CountryRegOfSalesTaxIDNumber,
        Supplier,
        VATRegistrationCountry as ComapnyCodeCountry,
        DocumentCurrency as Currency,  
          
    };
    entity PurchaseOrderItem as projection on purchaseorderapi.PurchaseOrderItem{
        GrossAmount,
        PurchaseOrder,
        NetPriceAmount,
        OrderQuantity,
        PurchaseOrderQuantityUnit,
        OrderPriceUnit,
        PurchaseOrderItemText,
        Material,
        PurchaseOrderItem,
        DocumentCurrency as Currency,
        BaseUnit,
        ProductTypeCode,
        CompanyCode,
        
    }
    entity PurOrdItemPricingElement as projection on purchaseorderapi.PurOrderItemPricingElement{
        PurchaseOrder,
        PurchaseOrderItem,
        ConditionApplication,
        ConditionType,
        ConditionBaseAmount,
        ConditionRateAmount,
        ConditionBaseValue,
        ConditionCurrency,
        ConditionQuantity,
        ConditionQuantityUnit,
        ConditionAmount,
        TransactionCurrency,
        ConditionTypeName,
        ConditionBaseValueUnit,
        ConditionRateValueIntlUnit,
        ConditionRateValueUnit
    }
    entity POSubcontractingComponent as projection on purchaseorderapi.POSubcontractingComponent{
        PurchaseOrder,
        PurchaseOrderItem,
        ScheduleLine,
        Material,
        BaseUnit
    };
    entity PurchaseOrderScheduleLine as projection on purchaseorderapi.PurchaseOrderScheduleLine{
        PurchaseOrder,
        PurchaseOrderItem,
        ScheduleLine,
        ScheduleLineDeliveryDate,
        SchedLineStscDeliveryDate,
        PurchaseOrderQuantityUnit,
        Currency,
        ScheduleLineOrderDate
    };
    entity PurchaseOrderAccountAssignment as projection on purchaseorderapi.PurchaseOrderAccountAssignment{
         PurchaseOrder,
         PurchaseOrderItem,
         OrderQuantityUnit,
         Quantity,
         DocumentCurrency as Currency,
         CompanyCode,

    };
    entity PurchaseOrderItemNote as projection on purchaseorderapi.PurchaseOrderItemNote{
                PurchaseOrder,
                PurchaseOrderItem,
                TextObjectType,
                Language,
                PlainLongText,
                PurchaseOrderItemUniqueID,
    };
entity PurchaseOrderNote as projection on purchaseorderapi.PurchaseOrderNote{
                PurchaseOrder,
                TextObjectType,
                Language,
                PlainLongText,
    };
entity PurchaseOrderSupplierAddress as projection on purchaseorderapi.PurchaseOrderSupplierAddress{
    CityName,
    PostalCode,
    StreetName,
    PurchaseOrder,
    OrganizationName1,
    EmailAddress


};
    

}
 