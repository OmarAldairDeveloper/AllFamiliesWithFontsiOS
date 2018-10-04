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
        
        self.families = UIFont.familyNames.sorted(by: { (s1, s2) -> Bool in
            return s1 < s2
        })
        
        
        for fam in self.families{
            self.fonts[fam] = UIFont.fontNames(forFamilyName: fam)
        }
        
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.families.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellForFamilies", for: indexPath)
        cell.textLabel?.text = families[indexPath.row]
        cell.textLabel?.font = UIFont(name: families[indexPath.row], size: 20)
        return cell
    }


}

