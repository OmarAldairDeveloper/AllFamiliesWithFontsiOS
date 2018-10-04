//
//  DetailFontsViewController.swift
//  AllFamiliesWithFonts
//
//  Created by Omar Aldair Romero Pérez on 10/4/18.
//  Copyright © 2018 Omar Aldair Romero Pérez. All rights reserved.
//

import UIKit

class DetailFontsViewController: UIViewController {

    @IBOutlet weak var familyLabel: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    var familyName: String = ""
    var fonts : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.familyLabel.text = "\(familyName)"
        self.familyLabel.font = UIFont(name: familyName, size: 24)

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    
    @IBAction func backHome(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
