//
//  rateCell.swift
//  differentUI
//
//  Created by Jawaher Alagel on 9/2/20.
//  Copyright © 2020 Jawaher Alaggl. All rights reserved.
//

import UIKit

class rateCell: UICollectionViewCell {
    
    static let identifier =  "rateCell"
    
    @IBOutlet weak var resturantImage: UIImageView!
    @IBOutlet weak var resturantName: UILabel!
    
    @IBOutlet var starButtons: [UIButton]!
    @IBOutlet weak var rateView: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        resturantImage.setThisRounded()
        
    }
    
    static func nib() -> UINib {
        return UINib(nibName: "rateCell", bundle: nil)
    }
    
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        print("Rated \(sender.tag) stars.")
//        rateView.text = "Rated \(sender.tag) stars."
        
        for  button in starButtons {
            if button.tag <= sender.tag {
                button.setBackgroundImage(UIImage.init(named: "star"), for: .normal)   //selectted
            } else {
                button.setBackgroundImage(UIImage.init(named: "star-not"), for: .normal)    //not selectted
            }
        }
        
    }
    
    
    
}


extension UIImageView {
    
    func setThisRounded() {
        let radius = self.frame.height / 2
        self.layer.cornerRadius = radius
        self.layer.masksToBounds = true
    }
}

