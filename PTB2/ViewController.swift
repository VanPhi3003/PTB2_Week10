//
//  ViewController.swift
//  PTB2
//
//  Created by Phi on 4/9/17.
//  Copyright © 2017 Phi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var a: UITextField!	
    
    @IBOutlet weak var b: UITextField!
    
    @IBOutlet weak var c: UITextField!
    
    @IBOutlet weak var kq1: UILabel!
    
    @IBOutlet weak var kq2: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        kq1.isHidden = true
        kq2.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func KetQua(_ sender: Any) {
        UnHide()
        let a1:Float = Float(a.text!)!
        let b1:Float = Float(b.text!)!
        let c1:Float = Float(c.text!)!
        
        if a1 == 0{
            if b1 == 0{
                if c1 == 0{
                    kq1.text = "pt co vo so nghiem"
                    kq2.isHidden = true
                }
                else{
                    kq1.text = "pt vo nghiem"
                    kq2.isHidden = true
                }
                
            }
            else{
                let x = Float(-c1/b1)
                let y:String = String(x)
                kq1.text = "pt co nghiem kep la: " + y
                kq2.isHidden = true
            }
        }
        else {
            let Delta = (b1*b1)-(4*a1*c1)
            
            if Delta < 0 {
                kq1.text = "pt vo nghiem"
                kq2.isHidden = true
            }
            else{
                if Delta == 0{
                    let x1 = (-b1/2*a1)
                    let y1:String = String(x1)
                    kq1.text = "pt co nghiem kep la: " + y1
                    kq2.isHidden = true
                }
                else{
                    let x2 = (-b1 - sqrt(Delta))/(2*a1)
                    let x3 = (-b1 + sqrt(Delta))/(2*a1)
                    
                    let y2:String = String(x2)
                    let y3:String = String(x3)
                    
                    kq1.text = "Nghiệm x1 = " + y2
                    kq2.text = "Nghiệm x2 = " + y3
                }
            }
        }
    }
    func Hide(){
        kq1.isHidden = true
        kq2.isHidden = true
    }
    func UnHide(){
        kq1.textColor = UIColor.brown
        kq1.isHidden = false
        kq2.textColor = UIColor.brown
        kq2.isHidden = false
    }
    @IBAction func Xoa(_ sender: Any) {
        Hide()
        a.text = ""
        b.text = ""
        c.text = ""
        kq1.text = ""
        kq2.text = ""
    }
}

