//
//  EmojiViewController.swift
//  Emoji App
//
//  Created by Bogdan A Galea on 2017-05-05.
//  Copyright © 2017 WhiteBelt Apps. All rights reserved.
//

import UIKit

class EmojiViewController: UIViewController {
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var emojiDescription: UILabel!
    
    var emoji = "No emoji"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        if emoji == "🐼" {
            emojiDescription.text = "Kung Fu Panda"
        }
        if emoji == "🦁" {
            emojiDescription.text = "Lion Rawr Rawr"
        }
        if emoji == "🐵" {
            emojiDescription.text = "Spanky Monkey"
        }
        if emoji == "🐝" {
            emojiDescription.text = "Bee Bzzzzz"
        }
        if emoji == "🦄" {
            emojiDescription.text = "Unicorn of Love"
        }



        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
