//
//  rateViewController.swift
//  differentUI
//
//  Created by Jawaher Alagel on 9/3/20.
//  Copyright © 2020 Jawaher Alaggl. All rights reserved.
//

import UIKit

class rateViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(hex: "#191F2B")
        collectionView.backgroundColor = UIColor(hex: "#191F2B")
        
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 350, height: 200)
        collectionView.collectionViewLayout = layout
        
        collectionView.register(rateCell.nib(), forCellWithReuseIdentifier: rateCell.identifier)
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: rateCell.identifier, for: indexPath) as! rateCell
        cell.backgroundColor = UIColor(hex: "#1F2633")
        cell.layer.cornerRadius = 35
        cell.contentView.layer.masksToBounds = true
        
        return cell
    }
}

