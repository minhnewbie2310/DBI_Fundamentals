
Select ProductID, ProductName, Quantity from OrderDetails inner join Product on OrderDetails.ProductID = Product.ID where Quantity = (Select MAX(Quantity) from OrderDetails)