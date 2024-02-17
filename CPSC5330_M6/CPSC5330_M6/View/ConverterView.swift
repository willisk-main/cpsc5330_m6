//
//  ConverterView.swift
//  Currency_Converter_M5
//
//  Created by Lauren Thompson on 6/23/23.
//

//import Foundation

/*
 import UIKit
 
 class ConverterView: UIViewController {
 
 //USD Amount
 @IBOutlet weak var USDAmountLabel: UILabel!
 
 //CAD
 @IBOutlet weak var CADAmountLabel: UILabel!
 
 //EUR
 @IBOutlet weak var EURAmountLabel: UILabel!
 
 //GBP
 @IBOutlet weak var GBPAmountLabel: UILabel!
 
 //MXN
 @IBOutlet weak var MXNAmountLabel: UILabel!
 
 
 //Amount
 var amount = ""
 
 //Override
 override func viewDidLoad() {
 super.viewDidLoad()
 
 CADAmountLabel.text =  " \(amount)"
 EURAmountLabel.text = " \(amount)"
 GBPAmountLabel.text = " \(amount)"
 MXNAmountLabel.text = " \(amount)"
 
 
 }
 
 
 /*
  // MARK: - Navigation
  
  // In a storyboard-based application, you will often want to do a little preparation before navigation
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
  // Get the new view controller using segue.destination.
  // Pass the selected object to the new view controller.
  }
  */
 
 }
 
 */

import UIKit

class ConverterView: UIViewController {
    
    @IBOutlet weak var amountUSD: UILabel!
    
    @IBOutlet weak var amountCAD: UILabel!
    
    @IBOutlet weak var amountEUR: UILabel!
    
    @IBOutlet weak var amountGBP: UILabel!
    
    @IBOutlet weak var amountMXN: UILabel!
    
    var converterLogic : ConverterLogic!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        amountUSD.text = "$ \(String(describing: converterLogic.amount))"
        
        if converterLogic.CAD{
            amountCAD.text = String(converterLogic.CADAmount)
        }
        else {
            amountCAD.text = "----"
        }
        
        if converterLogic.EUR{
            amountEUR.text = String(converterLogic.EURAmount)
        }
        else {
            amountEUR.text = "----"
        }
        
        if converterLogic.GBP{
            amountGBP.text = String(converterLogic.GBPAmount)
        }
        else {
            amountGBP.text = "----"
        }
        
        if converterLogic.MXN{
            amountMXN.text = String(converterLogic.MXNAmount)
        }
        else {
            amountMXN.text = "----"
        }
    }
}
