//
//  ViewController.swift
//  SwitchButtonTest
//
//  Created by 유진혁 on 2016. 3. 15..
//  Copyright © 2016년 leilen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var button: UISegmentedControl!
    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var secondView: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.firstView.alpha = 1
        self.secondView.alpha = 0
        print(button.selectedSegmentIndex)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func valueChanged(sender: AnyObject) {
        print(self.button.selectedSegmentIndex)
        switch self.button.selectedSegmentIndex{
        case 0:
            self.firstView.alpha = 1
            self.secondView.alpha = 0
            break
        case 1:
            self.firstView.alpha = 0
            self.secondView.alpha = 1
            break
        default:
            break
        }
    }

}

