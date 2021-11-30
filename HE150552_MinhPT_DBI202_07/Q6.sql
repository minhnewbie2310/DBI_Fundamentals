Select ProductID, ProductName, COUNT(ProductID) as NumberOfOrders from OrderDetails inner join Product on Product.ID = OrderDetails.ProductID group by ProductID,ProductName having COUNT(ProductID) = 1
