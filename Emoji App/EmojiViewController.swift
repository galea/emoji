//
//  EmojiViewController.swift
//  Emoji App
//
//  Created by Bogdan A Galea on 2017-05-05.
//  Copyright © 2017 WhiteBelt Apps. All rights reserved.
//

import UIKit

class EmojiViewController: UIViewController {
   
    @IBOutlet weak var categoryLabel: UILabel!
    
    @IBOutlet weak var birthyearLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var emojiDescription: UILabel!
    
    var emoji = Emoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji.stringEmoji
        birthyearLabel.text = "Origination Date: \(emoji.birthYear)"
        categoryLabel.text = "Category: \(emoji.category)"
       emojiDescription.text = "Defintion: \(emoji.defintion)"


        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
