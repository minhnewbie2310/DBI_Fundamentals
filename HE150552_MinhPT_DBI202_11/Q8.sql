create proc pr2
@product_id int, @totalAmount int output
as
begin
	select @totalAmount = COUNT(stocks.product_id)
	from stocks, stores
	where stocks.store_id = stores.store_id and @product_id = stocks.product_id
end