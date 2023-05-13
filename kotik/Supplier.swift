//
//  Supplier.swift
//  kotik
//
//  Created by imran on 26.04.2023.
//

import Foundation

class Supplier{
    var catalog:[Product] = []
    
    func supply(){
        var ok = false
        while ok == false{
            print("Введите название товара для отправки в магазин:")
            let g = readLine()!
            print("Введите оптовую цену на этот товар:")
            let p = Int(readLine()!)!
            catalog.append(Product(name: g, price: p))
            print("Желаете отправить что-то ещё? yes/no:")
            let yn = readLine()!
            if yn == "yes"{
                
            }else{
                ok = true
            }
        }
        
    }
    
}
