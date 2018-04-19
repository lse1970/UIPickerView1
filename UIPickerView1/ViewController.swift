//
//  ViewController.swift
//  UIPickerView1
//
//  Created by D7702_09 on 2018. 4. 19..
//  Copyright © 2018년 lse. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    @IBOutlet weak var myPickerView: UIPickerView!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var lbl: UILabel!
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 2
        
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        if component == 0 {
            return 10
        }
        else {
            return 100
        }
        
    }
    //UIPickerViewDelegate method
    // 1000번 호출
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        if component == 0 {
            return "comp01  \(row)"
        } else {
            return "comp02  \(row)"
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        if component == 0 {
            myLabel.text = "comp01 \(row)"
        } else {
            lbl.text = "comp02 \(row)"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // Delegate, DataSource 연결
        myPickerView.dataSource = self
        myPickerView.delegate = self
    }

}

