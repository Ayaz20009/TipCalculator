//
//  ViewController.swift
//  MY_TiP_Cal
//
//  Created by Ayaz Shah on 12/4/15.
//  Copyright © 2015 Ayaz Shah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TipLabel: UILabel!
    @IBOutlet weak var TotalLabel: UILabel!
    @IBOutlet weak var BillField: UITextField!
    @IBOutlet weak var Tipcontrol: UISegmentedControl!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        TipLabel.text = "$0.00"
        TotalLabel.text = "$0.00"
        
       
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func editchanged(sender: AnyObject) {
        var percentages = [0.18,0.20,0.25]
        let percentage = percentages[Tipcontrol.selectedSegmentIndex]
        
        
        
        let billamount = NSString(string: BillField.text!).doubleValue
        let tipamount = billamount * percentage
        let totalamount = billamount + tipamount
        
        TipLabel.text = "$\(tipamount)"
        TotalLabel.text = "$\(totalamount)"
        
        TipLabel.text = String(format: "$%0.2f", tipamount)
        TotalLabel.text = String(format: "$%0.2f", totalamount)
        
        
    }

    @IBAction func endEditing(sender: AnyObject) {
        view.endEditing(true)
    }
   
}

