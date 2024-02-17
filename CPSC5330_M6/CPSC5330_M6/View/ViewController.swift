//
//  ViewController.swift
//  Currency_Converter_M5
//
//  Created by Lauren Thompson on 6/23/23.
//

/* import UIKit

class ViewController: UIViewController {
    
        //USD Amount
        @IBOutlet weak var amountLabel: UILabel!
    
        //Text Field
        @IBOutlet weak var textField: UITextField!
        
        //CAD
        @IBOutlet weak var cSwitch: UISwitch!
        
        //Euro
        @IBOutlet weak var eSwitch: UISwitch!
        
        //GBP
        @IBOutlet weak var gSwitch: UISwitch!
        
        //MXN
        @IBOutlet weak var mSwitch: UISwitch! 
    
        //Converter Logic
        var converterLogic = ConverterLogic()
        var amount = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //CAD
    @IBAction func CADSlider(_ sender: UISwitch)    {
        converterLogic.setSwitch(sender.isOn)
    }
    
    //Euro
    @IBAction func EuroSlider(_ sender: UISwitch) {
        converterLogic.setSwitch(sender.isOn)
    }
    
    //GBP
    @IBAction func GBPSlider(_ sender: UISwitch) {
        converterLogic.setSwitch(sender.isOn)
    }
    
    //MXN
    @IBAction func MXNSlider(_ sender: UISwitch) {
        converterLogic.setSwitch(sender.isOn)
    
    }
    
    //Convert Button
    @IBAction func convertButton(_ sender: UIButton) {
        
        //Use converterLogic to convert amount
        let amount = Double(textField.text ?? "0") ?? 0.0
        let result = converterLogic.convertAmount(amount)


        let alert = UIAlertController(title: "Conversion Result", message: result, preferredStyle: .alert)
            //let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
              //  alert.addAction(okAction)
             //   present(alert, animated: true, completion: nil)

        self.amount = result
        self.performSegue(withIdentifier: "toConverterView", sender: self)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "toConverterView" {
            let navigation = segue.destination as! ConverterView
            navigation.amount = amount
        }
    }
    
} */

import UIKit

class ViewController: UIViewController  {
    
    @IBOutlet weak var amountLabel: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    var converterLogic = ConverterLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Do any additional setup after loading the view
        
    }
    
    @IBAction func CADChanger(_ sender: UISwitch)    {
        if sender.isOn  {
            converterLogic.setCADChanger(true)
        }
        else    {
            converterLogic.setCADChanger(false)
        }
    }
    
    @IBAction func EURChanger(_ sender: UISwitch)    {
        if sender.isOn  {
            converterLogic.setEURChanger(true)
        }
        else    {
            converterLogic.setEURChanger(false)
        }
    }
    
    @IBAction func GBPChanger(_ sender: UISwitch)    {
        if sender.isOn  {
            converterLogic.setGBPChanger(true)
        }
        else    {
            converterLogic.setGBPChanger(false)
        }
    }
    
    @IBAction func MXNChanger(_ sender: UISwitch)    {
        if sender.isOn  {
            converterLogic.setMXNChanger(true)
        }
        else    {
            converterLogic.setMXNChanger(false)
        }
    }
    
    @IBAction func convert(_ sender: UIButton)  {
        if let amount = Int(textField.text!)    {
            converterLogic.converter(amount)
            self.performSegue(withIdentifier: "toConverterView", sender: self)
        }
        else {
            amountLabel.text = "Please enter a number"
            amountLabel.textColor = UIColor.red
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)   {
        
        if segue.identifier == "toConverterView"    {
            let navigation = segue.destination as! ConverterView
            navigation.converterLogic = converterLogic
        }
    }
    
}

