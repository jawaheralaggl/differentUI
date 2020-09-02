//
//  ViewController.swift
//  differentUI
//
//  Created by Jawaher Alagel on 9/2/20.
//  Copyright © 2020 Jawaher Alaggl. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(hex: "#191F2B")
        collectionView.backgroundColor = UIColor(hex: "#191F2B")
                
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 350, height: 200)
        collectionView.collectionViewLayout = layout
        
        collectionView.register(orderCell.nib(), forCellWithReuseIdentifier: orderCell.identifier)
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: orderCell.identifier, for: indexPath) as! orderCell
        cell.backgroundColor = UIColor(hex: "#1F2633")
        cell.layer.cornerRadius = 35
        cell.contentView.layer.masksToBounds = true
        
        return cell
    }
}

