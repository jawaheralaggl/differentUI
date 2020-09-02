//
//  transitCell.swift
//  differentUI
//
//  Created by Jawaher Alagel on 9/3/20.
//  Copyright © 2020 Jawaher Alaggl. All rights reserved.
//

import UIKit

class transitCell: UICollectionViewCell {
    
    static let identifier =  "transitCell"
    
    @IBOutlet weak var resturantImage: UIImageView!
    @IBOutlet weak var resturantName: UILabel!
    @IBOutlet weak var deliveredTime: UILabel!
    @IBOutlet weak var contactButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        resturantImage.setToRounded()
        
        
    }
    
    
    static func nib() -> UINib {
        return UINib(nibName: "transitCell", bundle: nil)
    }
    
    
}


extension UIImageView {
    
    func setToRounded() {
        let radius = self.frame.height / 2
        self.layer.cornerRadius = radius
        self.layer.masksToBounds = true
    }
}

