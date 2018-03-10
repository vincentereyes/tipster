//
//  ViewController.swift
//  Tipster
//
//  Created by Vince Reyes on 3/9/18.
//  Copyright © 2018 VinceReyes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var num = ""
    var counter = 0
    
    @IBAction func btn7(_ sender: UIButton) {
        num += "7"
        numlbl.text = num
        fuckthis()
    }
    
    @IBAction func btn8(_ sender: UIButton) {
        num += "8"
        numlbl.text = num
        fuckthis()
    }
    
    @IBAction func btn9(_ sender: UIButton) {
        num += "9"
        numlbl.text = num
        fuckthis()
    }
    
    @IBAction func btn4(_ sender: UIButton) {
        num += "4"
        numlbl.text = num
        fuckthis()
    }
    
    @IBAction func btn5(_ sender: UIButton) {
        num += "5"
        numlbl.text = num
        fuckthis()
    }
    
    @IBAction func btn6(_ sender: UIButton) {
        num += "6"
        numlbl.text = num
        fuckthis()
    }
    
    @IBAction func clearbtn(_ sender: UIButton) {
        num = ""
        numlbl.text = "0"
        counter = 0
        lowrate.text = "0%"
        midrate.text = "0%"
        highrate.text = "0%"
        lownum.text = "0.00"
        midnum.text = "0.00"
        highnum.text = "0.00"
        lowtotal.text = "0.00"
        midtotal.text = "0.00"
        hightotal.text = "0.00"
        
        
    }
    
    @IBOutlet weak var numlbl: UILabel!
    
    @IBOutlet weak var lowrate: UILabel!
    
    @IBOutlet weak var lownum: UILabel!
    
    @IBOutlet weak var lowtotal: UILabel!
    
    @IBOutlet weak var midrate: UILabel!
    
    @IBOutlet weak var midnum: UILabel!
    
    @IBOutlet weak var midtotal: UILabel!
    
    @IBOutlet weak var highrate: UILabel!
    
    @IBOutlet weak var highnum: UILabel!
    
    @IBOutlet weak var hightotal: UILabel!
    
    
    
    var bs = 5
    var anotherbs = 1
    
    @IBAction func tiprate(_ sender: UISlider) {
        let val:Int = Int(sender.value)
        bs = val
        fuckthis()
    }
    
    @IBOutlet weak var grouplabel: UILabel!
    
    @IBAction func groupslider(_ sender: UISlider) {
        let divisor:Int = Int(sender.value)
        anotherbs = divisor
        grouplabel.text = "group size: " + String(divisor)
        fuckthis()
        
    }

    func fuckthis() {
        let lowper = bs
        let midper = bs + 5
        let highper = bs + 10
        let input: Double? = Double(num)
        lowrate.text = String(lowper) + "%"
        midrate.text = String(midper) + "%"
        highrate.text = String(highper) + "%"
        if let unwrappedinput = input {
            lownum.text = String(format: "%.2f", (unwrappedinput * (Double(lowper) / 100) / Double(anotherbs)))
            midnum.text = String(format: "%.2f", (unwrappedinput * (Double(midper) / 100) / Double(anotherbs)))
            highnum.text = String(format: "%.2f", (unwrappedinput * (Double(highper) / 100) / Double(anotherbs)))
            lowtotal.text = String(format: "%.2f", ((unwrappedinput * (Double(lowper) / 100)) + unwrappedinput) / Double(anotherbs))
            midtotal.text = String(format: "%.2f", ((unwrappedinput * (Double(midper) / 100)) + unwrappedinput) / Double(anotherbs))
            hightotal.text = String(format: "%.2f", ((unwrappedinput * (Double(highper) / 100)) + unwrappedinput) / Double(anotherbs))
        }
    }
    
    
    
    
    @IBAction func btn1(_ sender: UIButton) {
        num += "1"
        numlbl.text = num
        fuckthis()
    }
    
    @IBAction func btn2(_ sender: UIButton) {
        num += "2"
        numlbl.text = num
        fuckthis()
    }
    
    @IBAction func btn3(_ sender: UIButton) {
        num += "3"
        numlbl.text = num
        fuckthis()
    }
    
    @IBAction func btn0(_ sender: UIButton) {
        if num != "" {
            num += "0"
            numlbl.text = num
            fuckthis()
        }
        
    }
    
    @IBAction func btnpt(_ sender: UIButton) {
        if counter == 0 {
            num += "."
            numlbl.text = num
            counter += 1
            fuckthis()
        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

