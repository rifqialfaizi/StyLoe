//
//  ProductsVC.swift
//  StyLoe
//
//  Created by Rifqi Alfaizi on 16/01/19.
//  Copyright © 2019 Rifqi Alfaizi. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
  
    @IBOutlet weak var productsCollection: UICollectionView!
    
    private(set) public var products = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productsCollection.delegate = self
        productsCollection.dataSource = self
    }
    
    func initProducts(category: Category) {
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
       navigationItem.title = category.title

   }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
         if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
            let product = products[indexPath.row]
            cell.updateViews(product: product)
            return cell
            
        }
         return ProductCell()
        
    }
    
   // override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    //    if let detailsVC = segue.destination as? DetailVC {
    //        let barBtn = UIBarButtonItem()
     //       barBtn.title = ""
      //      navigationItem.backBarButtonItem = barBtn
     //       assert( sender as? Product != nil)
            //detailsVC.initProducts(category: sender as! Product)
            
            
    //    }
    //}
    
    @IBAction func backBtnWasPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    }
    


