//
//  ViewController.swift
//  surfboard
//
//  Created by ben on 2018/5/25.
//  Copyright © 2018年 ben. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var surfboard1: UIImageView!
    @IBOutlet weak var surfboard2: UIImageView!
    @IBOutlet weak var surfboard3: UIImageView!
    
    @IBOutlet weak var surfboard1Qty: UILabel!
    @IBOutlet weak var surfboard2Qty: UILabel!
    @IBOutlet weak var surfboard3Qty: UILabel!
    @IBOutlet weak var total: UILabel!
    
    var myValue1:Int=0
    var myValue2:Int=0
    var myValue3:Int=0

    @IBAction func surfboard1Stepper(_ sender: UIStepper) {
            myValue1 = Int(sender.value)
            surfboard1Qty.text = "\(myValue1)"
            calculate()
        }
    @IBAction func surfboard2Stepper(_ sender: UIStepper) {
        myValue2 = Int(sender.value)
        surfboard2Qty.text = "\(myValue2)"
        calculate()
        
    }
    @IBAction func surfboard3Stepper(_ sender: UIStepper) {
        myValue3 = Int(sender.value)
        surfboard3Qty.text = "\(myValue3)"
        calculate()
        
        
    }
    


    func calculate() {
    let sum = 14500 * myValue1 + 15000 * myValue2 + 10000 * myValue3
    total.text = "Total: $\(sum)"
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

