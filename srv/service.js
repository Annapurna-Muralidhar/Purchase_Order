const cds = require('@sap/cds');

module.exports = cds.service.impl(async function () {
    const purchaseorderapi = await cds.connect.to('CE_PURCHASEORDER_0001');

    this.on('READ','PurchaseOrderSrv', async (req) => {            
        return await purchaseorderapi.run(req.query);
    });

    this.on('READ', 'PurchaseOrderItem', async (req) => {
            return await purchaseorderapi.run(req.query);
    }),


    this.on('READ', 'PurOrdItemPricingElement', async (req) => {
            return await purchaseorderapi.run(req.query);;
    });

    this.on('READ', 'POSubcontractingComponent', async (req) => {
            return await purchaseorderapi.run(req.query);
    });


    this.on('READ', 'PurchaseOrderScheduleLine', async (req) => {
          return await purchaseorderapi.run(req.query);
    });


    this.on('READ', 'PurchaseOrderAccountAssignment', async (req) => {
        return await purchaseorderapi.run(req.query);
    });

    this.on('READ', 'PurchaseOrderItemNote', async (req) => {
        return await purchaseorderapi.run(req.query);
    });

    this.on('READ', 'PurchaseOrderNote', async (req) => {
        return await purchaseorderapi.run(req.query);
    });

    this.on('READ', 'PurchaseOrderSupplierAddress', async (req) => {
        return await purchaseorderapi.run(req.query);
    });


})