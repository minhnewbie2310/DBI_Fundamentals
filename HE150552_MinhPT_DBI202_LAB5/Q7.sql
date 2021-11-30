
select distinct MONTH(orderDate) as [Month], YEAR(orderDate) as [Year], productCategory, count(quantityOrdered) as numberOfProducts from (orderdetails inner join products on orderdetails.productCode = products.productCode) inner join orders on orderdetails.orderNumber = orders.orderNumber group by MONTH(orderDate),YEAR(orderDate), productCategory having MONTH(orderDate) >= 1 and MONTH(orderDate) <= 3 and YEAR(orderDate) = 2003 order by Month asc