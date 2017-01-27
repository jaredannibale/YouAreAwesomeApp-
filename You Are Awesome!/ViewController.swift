//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Jared Annibale on 1/19/17.
//  Copyright © 2017 Jared Annibale. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var messageButton: UIButton!
    @IBOutlet weak var statementNumber: UILabel!
    
    
    @IBOutlet weak var sportsImage: UIImageView!
    
    
    var lastIndex =  -1
    var lastImage = -1
    let numOfImages = 10
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        
        
        let messages = ["You Are Fantastic!",
                        "You Are Great!",
                        "You Are Amazing!",
                        "You Are Awesome!",
                        "When the Genius Bar needs help, they call you!",
                        "You Brighten My Day!",
                        "I Can't Wait to Use Your App!"]
        
        var randomIndex: Int = Int(arc4random_uniform(UInt32(messages.count)))
        
        var randomImage: Int = Int(arc4random_uniform(UInt32(numOfImages)))
        
        while randomIndex == lastIndex {
            randomIndex = Int(arc4random_uniform(UInt32(messages.count)))
        }
        messageLabel.text = messages[randomIndex]
        lastIndex = randomIndex
        
      
        
        
        while randomImage == lastImage {
            randomImage = Int(arc4random_uniform(UInt32(numOfImages)))
        }
        
        sportsImage.isHidden = false
        sportsImage.image = UIImage(named: "image" + String(randomImage))
        
        lastImage = randomImage
        
        
        
        
        
        statementNumber.text = String(randomIndex+1)
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        /* messageLabel.text = messages[in
         dex]
         
         if index == messages.count-1 {
            index = 0
         
         } else {
         index = index + 1} */
        
        if messageLabel.text == "You Are Fantastic!" {
         messageLabel.textColor = UIColor.blue
         } else if messageLabel.text == "You Are Great!" {
         messageLabel.textColor = UIColor.green}
         else if messageLabel.text == "You Are Amazing!" {
         messageLabel.textColor = UIColor.magenta}
         else if messageLabel.text == "You Are Awesome!" {
         messageLabel.textColor = UIColor.brown}
         else if messageLabel.text == "When the Genius Bar needs help, they call you!" {
         messageLabel.textColor = UIColor.cyan}
         else if messageLabel.text == "You Brighten My Day!" {
         messageLabel.textColor = UIColor.orange}
         else {messageLabel.textColor = UIColor.darkGray}
         
         statementNumber.textColor = messageLabel.textColor
        
    
    
    
    
    
        
    
}

}
