//
//  ViewController.swift
//  NSAttributedString-Demo
//
//  Created by Alex Paul on 6/26/20.
//  Copyright © 2020 Alex Paul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var messageLabel: UILabel!
  
  let sampleStr = "Situation: Enter a situation in which you were invovled, that had a positive otucome\n\nTask: Enter the tasks that were involved in the situation\n\nAction: Specify what actions you took in the situation to complete the tasks\n\nResult: What were the results of your actions taken?"
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    stylelizeText()
  }
  
  private func stylelizeText() {
    messageLabel.text = sampleStr
    let str = NSString(string: messageLabel.text!)
    
    let situationStrRange = str.range(of: "Situation:")
    let taskStrRange = str.range(of: "Task:")
    let actionStrRange = str.range(of: "Action:")
    let resultStrRange = str.range(of: "Result:")
    
    
    let font = UIFont.systemFont(ofSize: 20, weight: .bold)
    let attributes: [NSAttributedString.Key: Any] = [NSAttributedString.Key.font: font,
                                                     NSAttributedString.Key.underlineStyle: NSUnderlineStyle.single.rawValue
    ]
    
    let attrString = NSMutableAttributedString(string: str as String, attributes: nil)
    
    attrString.addAttributes(attributes, range: situationStrRange)
    attrString.addAttributes(attributes, range: taskStrRange)
    attrString.addAttributes(attributes, range: actionStrRange)
    attrString.addAttributes(attributes, range: resultStrRange)
    
    messageLabel.attributedText = attrString
  }  
}

