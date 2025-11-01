-- Warehouses
INSERT INTO Warehouses VALUES (1,'Central Warehouse','Mumbai, India');
INSERT INTO Warehouses VALUES (2,'North Warehouse','New Delhi, India');
INSERT INTO Warehouses VALUES (3,'West Warehouse','Pune, India');

-- Suppliers
INSERT INTO Suppliers VALUES (1,'Global Supplies Ltd.','contact@globalsupplies.com','+911234567890');
INSERT INTO Suppliers VALUES (2,'FastParts Inc.','sales@fastparts.com','+911234567891');

-- Products
INSERT INTO Products VALUES (1,'Laptop Model A','LAP-A-001','Electronics',75000);
INSERT INTO Products VALUES (2,'USB Cable','USB-C-01','Accessories',200);
INSERT INTO Products VALUES (3,'Office Chair','CHR-Office-01','Furniture',6000);

-- Inventory
INSERT INTO Inventory VALUES (1,1,1,50,TO_DATE('2025-10-01','YYYY-MM-DD'));
INSERT INTO Inventory VALUES (2,1,2,200,TO_DATE('2025-10-01','YYYY-MM-DD'));
INSERT INTO Inventory VALUES (3,2,3,40,TO_DATE('2025-10-01','YYYY-MM-DD'));

-- Purchase Orders
INSERT INTO Purchase_Orders VALUES (1001,1,TO_DATE('2025-09-15','YYYY-MM-DD'),TO_DATE('2025-09-25','YYYY-MM-DD'),'Received');
INSERT INTO Purchase_Orders VALUES (1002,2,TO_DATE('2025-10-05','YYYY-MM-DD'),TO_DATE('2025-10-12','YYYY-MM-DD'),'In Transit');

-- Order Items
INSERT INTO Order_Items VALUES (1001,1,20,72000);
INSERT INTO Order_Items VALUES (1001,2,100,180);
INSERT INTO Order_Items VALUES (1002,3,30,5800);

-- Shipments
INSERT INTO Shipments VALUES (5001,1002,TO_DATE('2025-10-06','YYYY-MM-DD'),'Speedy Logistics','TRK123456');

-- Delivery Tracking
INSERT INTO Delivery_Tracking VALUES (9001,5001,'Shipped',TO_DATE('2025-10-06','YYYY-MM-DD'),'Dispatch Center - Mumbai');
INSERT INTO Delivery_Tracking VALUES (9002,5001,'In Transit',TO_DATE('2025-10-07','YYYY-MM-DD'),'On Route to Delhi');
