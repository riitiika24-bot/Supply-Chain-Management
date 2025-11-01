-- Current stock of a product across warehouses
SELECT p.product_name, w.warehouse_name, i.quantity
FROM Products p
JOIN Inventory i ON p.product_id = i.product_id
JOIN Warehouses w ON i.warehouse_id = w.warehouse_id
WHERE p.product_id = 1;

-- Low stock alert (threshold = 20)
SELECT p.product_id, p.product_name, SUM(i.quantity) AS total_stock
FROM Products p
JOIN Inventory i ON p.product_id = i.product_id
GROUP BY p.product_id, p.product_name
HAVING SUM(i.quantity) < 20;

-- Purchase orders currently in transit
SELECT po.po_id, s.supplier_name, po.order_date, po.expected_date, po.status
FROM Purchase_Orders po
JOIN Suppliers s ON po.supplier_id = s.supplier_id
WHERE po.status = 'In Transit';

-- Shipment tracking history for a shipment
SELECT dt.status_date, dt.status, dt.location
FROM Delivery_Tracking dt
WHERE dt.shipment_id = 5001
ORDER BY dt.status_date;

-- Inventory value per warehouse
SELECT w.warehouse_name, SUM(i.quantity * p.unit_price) AS inventory_value
FROM Inventory i
JOIN Products p ON i.product_id = p.product_id
JOIN Warehouses w ON i.warehouse_id = w.warehouse_id
GROUP BY w.warehouse_name;
