//
//  DetailCell.swift
//  StyLoe
//
//  Created by Rifqi Alfaizi on 17/01/19.
//  Copyright © 2019 Rifqi Alfaizi. All rights reserved.
//

import UIKit

class DetailCell: UICollectionViewCell {

    @IBOutlet weak var imageProduct: UIImageView!
    @IBOutlet weak var titleProduct: UILabel!
    @IBOutlet weak var priceProduct: UILabel!
    
    func updateViews(detail: Detail ) {
        imageProduct.image = UIImage(named: detail.imageName)
        titleProduct.text = detail.title
        priceProduct.text = detail.price
    }
    
}
