//
//  AnimalViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalViewController: UIViewController {
    
    @IBOutlet weak var animalEmojiLabel: UILabel!
    @IBOutlet weak var animalNameLabel: UILabel!
    
    var animal: String?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let animal = animal {
            animalNameLabel.text = animal
            
            let animalEmoji = nameToEmoji(animal)
            animalEmojiLabel.text = animalEmoji
            animalNameLabel.text = animal
            navigationItem.title = animal
        }
    }
    
    
    func nameToEmoji(_ name: String) -> String {
        switch name {
        case "Cat":
            return "🐱"
        case "Mouse":
            return "🐭"
        case "Hamster":
            return "🐹"
        case "Bunny":
            return "🐰"
        case "Panda":
            return "🐼"
        case "Lion":
            return "🦁"
        case "Pig":
            return "🐷"
        case "Frog":
            return "🐸"
        case "Octopus":
            return "🐙"
        case "Dog":
            return "🐶"
        default:
            return ""
        }
    }
    
    
    
}
