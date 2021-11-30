select productCode, productName, productCategory, buyPrice, suggestedRetailPrice from products where suggestedRetailPrice >= 2*buyPrice and productCategory ='Classic Cars' order by suggestedRetailPrice desc