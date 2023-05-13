//
//  main.swift
//  kotik
//
//  Created by imran on 26.04.2023.
//

import Foundation

let supplier = Supplier()
let store = Store()
print("---ПОСТАВЩИК---")
supplier.supply()

store.catalog = supplier.catalog
print("---МАГАЗИН---")
print("Список полученного товара с отповыми ценами:")
for i in store.catalog{
    print(i.name, "-", i.price)
}

print("---Установка розничных цен---")
store.changePrice()

print("-Список товара с розничными ценами-")
for i in store.catalog{
    print(i.name, "-", i.price)
}

print("Желаете установить на что-то скидку? yes/no")
var f = readLine()!
if f == "yes"{
    store.discount()
}else{
    
}
print("-Финальный каталог товаров-")
for i in store.catalog{
    print(i.name, "-", i.price)
}
