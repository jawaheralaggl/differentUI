//
//  HomeViewController.swift
//  differentUI
//
//  Created by Jawaher Alagel on 9/3/20.
//  Copyright © 2020 Jawaher Alaggl. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    
    @IBOutlet weak var orderButton: UIButton!
    @IBOutlet weak var transitButton: UIButton!
    @IBOutlet weak var ratingButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(hex: "#191F2B")

        orderButton.layer.cornerRadius = 17
        transitButton.layer.cornerRadius = 17
        ratingButton.layer.cornerRadius = 17
        
    }
    
    @IBAction func goOrder(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func gotransit(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "transitViewController") as! transitViewController
        
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func goRating(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "rateViewController") as! rateViewController
        
        self.present(vc, animated: true, completion: nil)
    }
    
}
