//
//  ViewController.swift
//  AllFamiliesWithFonts
//
//  Created by Omar Aldair Romero Pérez on 10/4/18.
//  Copyright © 2018 Omar Aldair Romero Pérez. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var families : [String] = []
    var fonts : [String : [String]] = [:]
    
    
  
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.families = UIFont.familyNames
        
        for fam in self.families{
            self.fonts[fam] = UIFont.fontNames(forFamilyName: fam)
        }
        
    }


}

