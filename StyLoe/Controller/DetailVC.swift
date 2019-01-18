//
//  PreviewVC.swift
//  StyLoe
//
//  Created by Rifqi Alfaizi on 17/01/19.
//  Copyright © 2019 Rifqi Alfaizi. All rights reserved.
//

import UIKit

class DetailVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var detailsView: UICollectionView!
    
    private(set) public var details = [Detail]()

    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        detailsView.delegate = self
        detailsView.dataSource = self
    
    }
    
   // func initDetail(product: Product) {
       // details = DataService.instance.getProducts(forCategoryTitle: product.title)
       // navigationItem.title = product.title
   // }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return details.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DetailCell", for: indexPath) as? DetailCell {
            let detail = details[indexPath.row]
            cell.updateViews(detail: detail)
            return cell
        }
        
        return DetailCell()
    }
    
    

}
