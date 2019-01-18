//
//  Data Service.swift
//  StyLoe
//
//  Created by Rifqi Alfaizi on 16/01/19.
//  Copyright © 2019 Rifqi Alfaizi. All rights reserved.
//

import Foundation

class DataService {
    
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS ", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    private let shirts = [
        Product(title: "199X Kid", price: "Rp.80.000", imageName: "199x kid.jpg"),
        Product(title: "F*king Cat", price: "Rp.80.000", imageName: "cat.jpg"),
        Product(title: "COMA", price: "Rp.80.000", imageName: "coma.jpg"),
        Product(title: "Life Has No Ctrl+Z Square White", price: "Rp.80.000", imageName: "ctrlz.jpg"),
        Product(title: "Life Has No Ctrl+Z", price: "Rp.80.000", imageName: "ctrlzz.jpg"),
        Product(title: "Life Has No Ctrl+Z Square White Big", price: "Rp.80.000", imageName: "ctrlzz.jpg"),
        Product(title: "Don't Look Back", price: "Rp.80.000", imageName: "dont look back.jpg"),
        Product(title: "FCK", price: "Rp.80.000", imageName: "fck.jpg"),
        Product(title: "F.Y.I.", price: "Rp.80.000", imageName: "fyi.jpg"),
        Product(title: "Game Over", price: "Rp.80.000", imageName: "game over.jpg"),
        Product(title: "HAHAHAHA", price: "Rp.80.000", imageName: "HAHAHAH.jpg"),
        Product(title: "HAHAHAHA", price: "Rp.80.000", imageName: "HAHAHAHHA.jpg"),
        Product(title: "Hand", price: "Rp.80.000", imageName: "hand.jpg"),
        Product(title: "Hey There!", price: "Rp.80.000", imageName: "hey there.jpg"),
        Product(title: "Human Being Black", price: "Rp.80.000", imageName: "human being black.jpg"),
        Product(title: "Human Being White", price: "Rp.80.000", imageName: "human being white.jpg"),
        Product(title: "I Don't Know What", price: "Rp.80.000", imageName: "i dont know what t.jpg"),
        Product(title: "I'm Fine", price: "Rp.80.000", imageName: "im fine.jpg"),
        Product(title: "Iron Man", price: "Rp.80.000", imageName: "iron man logo.jpg"),
        Product(title: "Iron Man Mask", price: "Rp.80.000", imageName: "iron man.jpg"),
        Product(title: "My Girl Is A Pornstar", price: "Rp.80.000", imageName: "my girl.jpg"),
        Product(title: "Osas", price: "Rp.80.000", imageName: "osas.jpg"),
        Product(title: "SHI(R)T", price: "Rp.80.000", imageName: "Shirt.jpg"),
        Product(title: "Sorry Girls", price: "Rp.80.000", imageName: "sorry girls.jpg"),
        Product(title: "Stop Wars", price: "Rp.80.000", imageName: "stop wars.jpg"),
        Product(title: "STY-LOE White", price: "Rp.80.000", imageName: "styloe.jpg"),
        Product(title: "STY-LOE", price: "Rp.80.000", imageName: "styloee.jpg"),
        Product(title: "WWF", price: "Rp.80.000", imageName: "wwf.jpg"),
        Product(title: "FCK", price: "Rp.80.000", imageName: "fck.jpg"),
        Product(title: "FCK", price: "Rp.80.000", imageName: "fck.jpg"),
        
        ]
    private let hats = [Product]()
    private let hoodies = [Product]()
    private let digitalGoods = [Product]()
    
    
    
    func getCategories() -> [Category]{
        return categories
        
    }

    
    func getProducts(forCategoryTitle title: String) -> [Product] {
        switch title {
        case "SHIRTS" :
            return getShirts()
        case "HATS" :
            return getHats()
        case "HOODIES" :
            return getHoodies()
        case "DIGITAL" :
            return  getDigitalGoods()
        default:
            return  getShirts()
        }
    }

  
        
    
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getDigitalGoods() -> [Product] {
        return digitalGoods
    }

}
