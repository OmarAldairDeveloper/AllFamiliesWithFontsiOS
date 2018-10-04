//
//  DetailFontsViewController.swift
//  AllFamiliesWithFonts
//
//  Created by Omar Aldair Romero Pérez on 10/4/18.
//  Copyright © 2018 Omar Aldair Romero Pérez. All rights reserved.
//

import UIKit

class DetailFontsViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
  
    

    @IBOutlet weak var familyLabel: UILabel!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var fontsPickerView: UIPickerView!
    
    var familyName: String = ""
    var fonts : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.familyLabel.text = "\(familyName)"
        self.familyLabel.font = UIFont(name: familyName, size: 24)
        
        if fonts.count <= 0{
            self.fontsPickerView.isHidden = true
        }

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
    
    
    // MARK: UIPickerViewDataSource
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.fonts.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return fonts[row]
    }
    
    // MARK: UIPickerViewDelegate
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let font = self.fonts[row]
        self.textView.font = UIFont(name: font, size: 14)
    }
    
}
