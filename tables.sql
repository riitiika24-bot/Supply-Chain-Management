-- Warehouses
CREATE TABLE Warehouses (
    warehouse_id NUMBER PRIMARY KEY,
    warehouse_name VARCHAR2(100),
    location VARCHAR2(200)
);

-- Suppliers
CREATE TABLE Suppliers (
    supplier_id NUMBER PRIMARY KEY,
    supplier_name VARCHAR2(100),
    contact_email VARCHAR2(100),
    phone VARCHAR2(20)
);

-- Products
CREATE TABLE Products (
    product_id NUMBER PRIMARY KEY,
    product_name VARCHAR2(150),
    sku VARCHAR2(50),
    category VARCHAR2(50),
    unit_price NUMBER
);

-- Inventory (stock per warehouse)
CREATE TABLE Inventory (
    inventory_id NUMBER PRIMARY KEY,
    warehouse_id NUMBER REFERENCES Warehouses(warehouse_id),
    product_id NUMBER REFERENCES Products(product_id),
    quantity NUMBER,
    last_updated DATE
);

-- Purchase Orders
CREATE TABLE Purchase_Orders (
    po_id NUMBER PRIMARY KEY,
    supplier_id NUMBER REFERENCES Suppliers(supplier_id),
    order_date DATE,
    expected_date DATE,
    status VARCHAR2(30)
);

-- Order Items (items within a purchase order)
CREATE TABLE Order_Items (
    po_id NUMBER REFERENCES Purchase_Orders(po_id),
    product_id NUMBER REFERENCES Products(product_id),
    quantity NUMBER,
    unit_cost NUMBER,
    PRIMARY KEY(po_id, product_id)
);

-- Shipments
CREATE TABLE Shipments (
    shipment_id NUMBER PRIMARY KEY,
    po_id NUMBER REFERENCES Purchase_Orders(po_id),
    shipped_date DATE,
    carrier VARCHAR2(100),
    tracking_number VARCHAR2(100)
);

-- Delivery Tracking
CREATE TABLE Delivery_Tracking (
    tracking_id NUMBER PRIMARY KEY,
    shipment_id NUMBER REFERENCES Shipments(shipment_id),
    status VARCHAR2(50),
    status_date DATE,
    location VARCHAR2(200)
);
