//
//  ProductManager.swift
//  AvitoTehProject
//
//  Created by vasiario on 25.08.2023.
//

import Foundation

class ProductManager {
  var products = [Product]()

func fetchProducts(completion: @escaping ([Product]) -> Void) {
    // Запрашиваем данные из Интернета
    // ...

    completion(products)
}
}
