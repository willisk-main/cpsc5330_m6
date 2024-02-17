//
//  ConverterCurrencyLogic.swift
//  Currency_Converter_M5
//
//  Created by Lauren Thompson on 6/23/23.
//

/* import Foundation

struct ConverterLogic {
    //Define the currency exchange rate
    
    //CAD
    var canRate: Double = 1.32
    
    //Euro
    var euroRate: Double = 0.91
    
    //GBP
    var gbpRate: Double = 0.79
    
    //MXN
    var mxnRate: Double = 17.16
   
    
    //Boolean Value for Switch
    //CAD
    var cadSwitch = true
    
    //Euro
    var euroSwitch = true
    
    //GBP
    var gbpSwitch = true
    
    //MXN
    var mxnSwitch = true
   
   
    
    //USD amount to be converted
    var amount: Double = 0
    
    
    //Method to set the ON/OFF Value for Switch
    mutating func setSwitch(_ switchValue: Bool){
        if switchValue {
            
            //CAD
            cadSwitch = true

            //Euro
            euroSwitch = true
            
            //GBP
            gbpSwitch = true
            
            //MXN
            mxnSwitch = true
           
                        
        } else {
            
            //CAD
            cadSwitch = false
            
            //Euro
            euroSwitch = false
            
            //GBP
            gbpSwitch = false
            
            //MXN
            mxnSwitch = false
            
        }
                
        
    }
    
    //USD to CAD
    mutating func getCadConversion(_ amount: Double) -> Double {
        let canValue = Double(amount * canRate)
        return canValue
    }
    
    //USD to EURO
    mutating func getEuroConversion(_ amount: Double) -> Double {
        let euroValue = Double(amount * euroRate)
        return euroValue
    }
    
    //USD to GBP
    mutating func getGbpConversion(_ amount: Double) -> Double {
        let gbpValue = Double(amount * gbpRate)
        return gbpValue
    }
    
    
    //USD to MXN
    mutating func getMxnConversion(_ amount: Double) -> Double {
        let mxnValue = Double(amount * mxnRate)
        return mxnValue
    }
    
  
   //Conversion
    mutating func convertAmount(_ amount: Double) -> String {
        
        //Retreive self.amount
       //Self.amount = amount
        
        var conversionResults = ""
        
        //CAD
        if cadSwitch {
            let cadValue = getCadConversion(amount)
            conversionResults += "CAD: \(cadValue)\n"
        }
        
        //Euro
        if euroSwitch {
            let euroValue = getEuroConversion(amount)
            conversionResults += "EUR: \(euroValue)\n"
        }
        
        //GBP
        if gbpSwitch {
            let gbpValue = getGbpConversion(amount)
            conversionResults += "GBP: \(gbpValue)\n"
        }
        
        //MXN
        if mxnSwitch {
            let mxnValue = getMxnConversion(amount)
            conversionResults += "MXN: \(mxnValue)\n"
        
        } else {
            conversionResults = "Results invalid"
        }
        return conversionResults
        
    }
    
}
*/

import Foundation

struct ConverterLogic   {
    
    var CAD = true
    var EUR = true
    var GBP = true
    var MXN = true
    
    var amount : Int = 0
    
    var CADAmount : Double = 0.0
    var EURAmount : Double = 0.0
    var GBPAmount : Double = 0.0
    var MXNAmount : Double = 0.0
    
    var CADConversion = 1.32
    var EURConversion = 0.91
    var GBPConversion = 0.79
    var MXNConversion = 17.16
    
    mutating func setCADChanger(_ switchValue: Bool) {
        if switchValue {
            CAD = true
        }
        else {
            CAD = false
        }
    }
    
    mutating func setEURChanger(_ switchValue: Bool) {
        if switchValue {
            EUR = true
        }
        else {
            EUR = false
        }
    }
    
    mutating func setGBPChanger(_ switchValue: Bool) {
        if switchValue {
            GBP = true
        }
        else {
            GBP = false
        }
    }
    
    mutating func setMXNChanger(_ switchValue: Bool) {
        if switchValue {
            MXN = true
        }
        else {
            MXN = false
        }
    }
    
    mutating func converter(_ amount: Int)  {
        self.amount = amount
        CADAmount = round(Double(amount) * CADConversion * 100) / 100.0
        
        EURAmount = round(Double(amount) * EURConversion * 100) / 100.0
        
        GBPAmount = round(Double(amount) * GBPConversion * 100) / 100.0
        
        MXNAmount = round(Double(amount) * GBPConversion * 100) / 100.0
    }
}
 
