//
//  orderCell.swift
//  differentUI
//
//  Created by Jawaher Alagel on 9/2/20.
//  Copyright © 2020 Jawaher Alaggl. All rights reserved.
//

import UIKit

class orderCell: UICollectionViewCell {
    
    static let identifier =  "orderCell"
    
    @IBOutlet weak var resturantImage: UIImageView!
    @IBOutlet weak var resturantName: UILabel!
    @IBOutlet weak var orderNo: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var orderButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        resturantImage.setRounded()
        
        orderButton.layer.cornerRadius = 17
        
    }
    
    //    public func configure(with text: String ) {
    //        //        textLabel.text = text
    //        //        textLabel.textColor = .white
    //        //        textLabel.font = UIFont.systemFont(ofSize: 20.0)
    //
    //    }
    
    static func nib() -> UINib {
        return UINib(nibName: "orderCell", bundle: nil)
    }
    
    //    override func layoutSubviews() {
    //        super.layoutSubviews()
    //
    //
    //        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10))
    //    }
    
}


extension UIImageView {
    
    func setRounded() {
        let radius = self.frame.height / 2
        self.layer.cornerRadius = radius
        self.layer.masksToBounds = true
    }
}

