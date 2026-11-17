SELECT i.SKU, i.SKU_Description, i.WarehouseID, w.WarehouseCity, w.WarehouseState 
FROM INVENTORY i join WAREHOUSE w on i.WarehouseID = w.WarehouseID
WHERE w.WarehouseCity <> 'Atlanta'
OR w.WarehouseCity <> 'Bangor'
OR w.WarehouseCity <> 'Chicago';