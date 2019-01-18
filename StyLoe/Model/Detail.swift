//
//  Detail.swift
//  StyLoe
//
//  Created by Rifqi Alfaizi on 17/01/19.
//  Copyright © 2019 Rifqi Alfaizi. All rights reserved.
//

import Foundation

struct Detail {
    private(set) public var title: String
    private(set) public var price: String
    private(set) public var imageName: String
    
    init(title: String, price: String, imageName: String) {
        self.imageName = imageName
        self.title = title
        self.price = price
    }}
