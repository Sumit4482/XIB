//
//  ViewController.swift
//  xib-1
//
//  Created by E5000855 on 04/06/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var customView: CustomView!
    override func viewDidLoad() {
        super.viewDidLoad()
  
        let rect = CGRect(x: 30, y: 100, width: 350,height: 170)
         let newView = CustomView(frame: rect)
         self.view.addSubview(newView)
    }


}

