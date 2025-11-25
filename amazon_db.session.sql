-- Category Table

CREATE TABLE category
(
    category_id INT PRIMARY KEY,
    category_name VARCHAR(25)
);

-- Customers Table

CREATE TABLE customers
(
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(25),
    last_name VARCHAR(25),
    state VARCHAR(25)
);

-- Sellers Table

CREATE TABLE sellers
(
    seller_id INT PRIMARY KEY,
    seller_name VARCHAR(25),
    origin VARCHAR(10)
);

-- Products Table

CREATE TABLE products
(
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    price FLOAT,
    cogs FLOAT,
    category_id INT,
    CONSTRAINT products_fk_category 
        FOREIGN KEY(category_id) REFERENCES category(category_id)
);

-- Orders Table

CREATE TABLE orders
(
    order_id INT PRIMARY KEY,	
    order_date DATE,	 
    customer_id INT,	
    seller_id INT,	
    order_status VARCHAR(20),
    CONSTRAINT orders_fk_customer 
        FOREIGN KEY(customer_id) REFERENCES customers(customer_id),
    CONSTRAINT orders_fk_seller
        FOREIGN KEY(seller_id) REFERENCES sellers(seller_id)
);

-- Order Items Table

CREATE TABLE order_items
(
    order_item_id INT PRIMARY KEY,
    order_id INT,	
    product_id INT,
    quantity INT,
    price_per_unit FLOAT,
    CONSTRAINT order_items_fk_order 
        FOREIGN KEY(order_id) REFERENCES orders(order_id),
    CONSTRAINT order_items_fk_product 
        FOREIGN KEY(product_id) REFERENCES products(product_id)
);  

-- Payments Table

CREATE TABLE payments
(
    payment_id INT PRIMARY KEY,	
    order_id INT,	
    payment_date DATE,	
    payment_status VARCHAR(25),
    CONSTRAINT payments_fk_order
        FOREIGN KEY(order_id) REFERENCES orders(order_id)
);

-- Shipping Table

CREATE TABLE shipping
(
    shipping_id	INT PRIMARY KEY,
    order_id INT,
    shipping_date DATE,	
    return_date	DATE,
    shipping_providers VARCHAR(15),	
    delivery_status VARCHAR(15),
    CONSTRAINT shipping_fk_order 
        FOREIGN KEY(order_id) REFERENCES orders(order_id)
);

-- Inventory Table

CREATE TABLE inventory
(
    inventory_id INT PRIMARY KEY,	
    product_id INT,
    stock INT,	
    warehouse_id INT,	
    last_stock_date DATE,
    CONSTRAINT inventory_fk_product 
        FOREIGN KEY(product_id) REFERENCES products(product_id)
); 
