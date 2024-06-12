//
//  CustomView.swift
//  xib-1
//
//  Created by E5000855 on 04/06/24.
//

import UIKit

class CustomView: UIView {
    static let identifier = "CustomView"
    @IBOutlet var label: UILabel!

    @IBAction func nextBtn(_ sender: Any) {
        let alertController = UIAlertController(title: "Alert", message: "Button clicked!", preferredStyle: .alert)

                let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                alertController.addAction(okAction)


    
    }
    @IBAction func currentBtn(_ sender: Any) {
        
    }
    
    
    required init?(coder aDecoder: NSCoder) {
         super.init(coder: aDecoder)
         initSubviews()
     }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initSubviews()
    }
    
    func initSubviews() {
           let nib = UINib(nibName: CustomView.identifier, bundle: nil)
           guard let view = nib.instantiate(withOwner: self, options: nil).first as?
                               UIView else {fatalError("Unable to convert nib")}
           view.frame = bounds
           view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
           addSubview(view)
        

       }
    func configureImageAndText(text : String){
        label.text = text
    }
}
