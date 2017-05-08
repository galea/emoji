//
//  ViewController.swift
//  Emoji App
//
//  Created by Bogdan A Galea on 2017-05-05.
//  Copyright © 2017 WhiteBelt Apps. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var emojiTableView: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        emojiTableView.dataSource = self
        emojiTableView.delegate = self
        emojis = makeEmojiArray()
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return emojis.count //shows the how many emojis u have in the array above
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        print(indexPath.row)
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       let emojiVC =  segue.destination as! EmojiViewController
        emojiVC.emoji = sender as! Emoji
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func makeEmojiArray() -> [Emoji] {
        
        let emoji1 = Emoji()
        emoji1.stringEmoji = "🐼"
        emoji1.birthYear = 2009
        emoji1.defintion = "Kung Fu Panda"
        emoji1.category = "Animal"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "🦁"
        emoji2.birthYear = 2011
        emoji2.defintion = "Lion Rawr Rawr"
        emoji2.category = "Animal"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "🐝"
        emoji3.birthYear = 2014
        emoji3.defintion = "Bee bzz bzz"
        emoji3.category = "Animal"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "🦄"
        emoji4.birthYear = 2017
        emoji4.defintion = "Unicorn of love"
        emoji4.category = "Animal"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "🐵"
        emoji5.birthYear = 2008
        emoji5.defintion = "Spankey Monkey"
        emoji5.category = "Animal"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5]
        
    }
}

