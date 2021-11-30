Select SubCategoryID, COUNT(SubCategory.ID) as NumberOfProducts from SubCategory inner join Product on SubCategory.ID = Product.SubCategoryID group by SubCategoryID having COUNT(SubCategory.ID) >= 157 or COUNT(SubCategory.ID) <= 50 order by COUNT(SubCategory.ID) desc

