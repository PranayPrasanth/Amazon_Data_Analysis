/*
8. Inventory Stock Alerts
Query products with stock levels below a certain threshold 

*/

SELECT 
    p.product_name,
    i.stock,
    i.warehouse_id,
    i.last_stock_date
FROM inventory i
JOIN 
    products p  ON i.product_id = p.product_id 
WHERE
    i.stock < 10;
    
/*
Results:
[
  {
    "product_name": "Pet Water Fountain",
    "stock": 1,
    "warehouse_id": 1,
    "last_stock_date": "2022-08-01"
  },
  {
    "product_name": "Pet Blanket",
    "stock": 7,
    "warehouse_id": 1,
    "last_stock_date": "2022-10-30"
  },
  {
    "product_name": "Cat Food",
    "stock": 4,
    "warehouse_id": 1,
    "last_stock_date": "2023-07-25"
  },
  {
    "product_name": "Dog Training Collar",
    "stock": 8,
    "warehouse_id": 1,
    "last_stock_date": "2022-05-04"
  },
  {
    "product_name": "Remote Control Helicopter",
    "stock": 5,
    "warehouse_id": 1,
    "last_stock_date": "2023-07-30"
  },
  {
    "product_name": "Magic Markers Set",
    "stock": 2,
    "warehouse_id": 1,
    "last_stock_date": "2023-02-21"
  },
  {
    "product_name": "Giant Jenga",
    "stock": 6,
    "warehouse_id": 1,
    "last_stock_date": "2023-08-24"
  },
  {
    "product_name": "Play Kitchen Set",
    "stock": 8,
    "warehouse_id": 1,
    "last_stock_date": "2022-03-21"
  },
  {
    "product_name": "Hot Wheels Cars",
    "stock": 7,
    "warehouse_id": 1,
    "last_stock_date": "2023-12-12"
  },
  {
    "product_name": "Sports Water Bottle",
    "stock": 3,
    "warehouse_id": 1,
    "last_stock_date": "2022-09-30"
  },
  {
    "product_name": "Hiking Poles",
    "stock": 4,
    "warehouse_id": 1,
    "last_stock_date": "2022-01-15"
  },
  {
    "product_name": "Pet Raincoat",
    "stock": 3,
    "warehouse_id": 1,
    "last_stock_date": "2023-11-05"
  },
  {
    "product_name": "Dog Pool",
    "stock": 9,
    "warehouse_id": 1,
    "last_stock_date": "2023-08-08"
  },
  {
    "product_name": "Dog Bone",
    "stock": 7,
    "warehouse_id": 1,
    "last_stock_date": "2022-10-01"
  },
  {
    "product_name": "Pet Gate",
    "stock": 2,
    "warehouse_id": 1,
    "last_stock_date": "2022-05-17"
  },
  {
    "product_name": "Pet GPS Tracker",
    "stock": 1,
    "warehouse_id": 1,
    "last_stock_date": "2023-10-10"
  },
  {
    "product_name": "Inflatable Pool",
    "stock": 7,
    "warehouse_id": 1,
    "last_stock_date": "2022-11-16"
  },
  {
    "product_name": "Outdoor Playhouse",
    "stock": 2,
    "warehouse_id": 1,
    "last_stock_date": "2022-05-03"
  },
  {
    "product_name": "Electronic Drum Set",
    "stock": 6,
    "warehouse_id": 1,
    "last_stock_date": "2022-03-05"
  },
  {
    "product_name": "Frisbee",
    "stock": 9,
    "warehouse_id": 1,
    "last_stock_date": "2023-01-10"
  },
  {
    "product_name": "Tennis Set",
    "stock": 1,
    "warehouse_id": 1,
    "last_stock_date": "2022-07-08"
  },
  {
    "product_name": "Bicycle Pump",
    "stock": 4,
    "warehouse_id": 1,
    "last_stock_date": "2023-10-26"
  },
  {
    "product_name": "Sports Massage Roller",
    "stock": 1,
    "warehouse_id": 1,
    "last_stock_date": "2023-08-04"
  },
  {
    "product_name": "Catnip Toys",
    "stock": 3,
    "warehouse_id": 1,
    "last_stock_date": "2022-11-22"
  },
  {
    "product_name": "Pet Toothbrush",
    "stock": 7,
    "warehouse_id": 1,
    "last_stock_date": "2023-04-02"
  },
  {
    "product_name": "Dog Travel Bowl",
    "stock": 5,
    "warehouse_id": 1,
    "last_stock_date": "2022-11-04"
  },
  {
    "product_name": "Dog Cooling Vest",
    "stock": 3,
    "warehouse_id": 1,
    "last_stock_date": "2022-12-05"
  },
  {
    "product_name": "Pet Litter Mat",
    "stock": 8,
    "warehouse_id": 1,
    "last_stock_date": "2023-05-10"
  },
  {
    "product_name": "Paddle Ball",
    "stock": 5,
    "warehouse_id": 1,
    "last_stock_date": "2023-05-15"
  },
  {
    "product_name": "Beach Ball",
    "stock": 8,
    "warehouse_id": 1,
    "last_stock_date": "2023-09-07"
  },
  {
    "product_name": "Kids’ Baseball Mitt",
    "stock": 9,
    "warehouse_id": 1,
    "last_stock_date": "2022-06-08"
  },
  {
    "product_name": "Archery Set",
    "stock": 1,
    "warehouse_id": 1,
    "last_stock_date": "2022-07-05"
  },
  {
    "product_name": "Children’s Puzzle",
    "stock": 1,
    "warehouse_id": 1,
    "last_stock_date": "2023-02-23"
  },
  {
    "product_name": "Remote-Controlled Boat",
    "stock": 6,
    "warehouse_id": 1,
    "last_stock_date": "2023-03-05"
  },
  {
    "product_name": "Stuffed Animal Set",
    "stock": 2,
    "warehouse_id": 1,
    "last_stock_date": "2023-01-07"
  },
  {
    "product_name": "Ride-On Car",
    "stock": 7,
    "warehouse_id": 1,
    "last_stock_date": "2022-03-12"
  },
  {
    "product_name": "Inflatable Slide",
    "stock": 7,
    "warehouse_id": 1,
    "last_stock_date": "2022-08-12"
  },
  {
    "product_name": "Kid’s Swing Set",
    "stock": 7,
    "warehouse_id": 1,
    "last_stock_date": "2022-01-11"
  },
  {
    "product_name": "Pet Training Mat",
    "stock": 8,
    "warehouse_id": 1,
    "last_stock_date": "2022-11-26"
  },
  {
    "product_name": "Cat Playhouse",
    "stock": 8,
    "warehouse_id": 1,
    "last_stock_date": "2022-01-05"
  },
  {
    "product_name": "Pet Odor Neutralizer",
    "stock": 5,
    "warehouse_id": 1,
    "last_stock_date": "2023-05-06"
  },
  {
    "product_name": "Pet Thermometer",
    "stock": 4,
    "warehouse_id": 1,
    "last_stock_date": "2023-08-20"
  },
  {
    "product_name": "Kid’s Beach Tent",
    "stock": 1,
    "warehouse_id": 1,
    "last_stock_date": "2022-09-26"
  },
  {
    "product_name": "Remote-Controlled Helicopter",
    "stock": 2,
    "warehouse_id": 1,
    "last_stock_date": "2023-06-27"
  },
  {
    "product_name": "Kid’s Yoga Mat",
    "stock": 9,
    "warehouse_id": 1,
    "last_stock_date": "2022-07-09"
  },
  {
    "product_name": "Pet First Aid Kit",
    "stock": 4,
    "warehouse_id": 1,
    "last_stock_date": "2022-03-16"
  },
  {
    "product_name": "Cat Wand Toy",
    "stock": 5,
    "warehouse_id": 1,
    "last_stock_date": "2023-10-28"
  },
  {
    "product_name": "Dog Bowls with Stand",
    "stock": 5,
    "warehouse_id": 1,
    "last_stock_date": "2023-01-26"
  },
  {
    "product_name": "Remote-Controlled Car Set",
    "stock": 7,
    "warehouse_id": 1,
    "last_stock_date": "2022-12-08"
  },
  {
    "product_name": "Mini Basketball Hoop",
    "stock": 5,
    "warehouse_id": 1,
    "last_stock_date": "2023-11-16"
  },
  {
    "product_name": "Baseball Batting Tee",
    "stock": 5,
    "warehouse_id": 1,
    "last_stock_date": "2022-11-14"
  }
]
*/