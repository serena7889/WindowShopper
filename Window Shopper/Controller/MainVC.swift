//
//  MainVC.swift
//  Window Shopper
//
//  Created by Serena Lambert on 09/11/2019.
//  Copyright © 2019 Serena Lambert. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var wageTxtField: CurrencyTextField!
    @IBOutlet weak var priceTxtField: CurrencyTextField!
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.1466039419, green: 0.2559989989, blue: 0.5093532801, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTxtField.inputAccessoryView = calcBtn
        priceTxtField.inputAccessoryView = calcBtn
        
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
    }
    
    @objc func calculate() {
        if let wageTxt = wageTxtField.text, let priceTxt = priceTxtField.text {
            if let wage = Double(wageTxt), let price = Double(priceTxt) {
                view.endEditing(true)
                resultLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
                resultLbl.isHidden = false
                hoursLbl.isHidden = false
            }
        }
        
    }
    
    @IBAction func clearCalculationPressed(_ sender: Any) {
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        wageTxtField.text = ""
        priceTxtField.text = ""
    }
    

}
