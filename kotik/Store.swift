//
//  Store.swift
//  kotik
//
//  Created by imran on 26.04.2023.
//

import Foundation

class Store{
    var catalog: [Product] = []
    func changePrice(){
        var ok = false
        while ok == false{
        print("Введите название товара, чтобы изменить его стоимость:")
        let z = readLine()!
                for product in catalog{
            if product.name == z{
                print("Введите новую цену:")
                let j = Int(readLine()!)!
                product.price = j
                }
            }
            print("Желаете изменить что-то ещё? yes/no:")
            let yn = readLine()!
            if yn == "yes"{
                
            }else{
                ok = true
            }
        }
    }
    
    func discount(){
        var ok = false
        while ok == false{
            print("Введите название товара, чтобы установить на него скидку:")
            var k = readLine()!
            for i in catalog{
                if i.name == k{
                    print("Введите размер скидки:")
                    let y = Int(readLine()!)!
                    i.price = i.price-i.price*y/100
                    i.name = "\(i.name) -\(y)% "
                }
            }
            print("Желаете изменить что-то ещё? yes/no:")
            let yn = readLine()!
            if yn == "yes"{
                
            }else{
                ok = true
            }
        }
    }
}
