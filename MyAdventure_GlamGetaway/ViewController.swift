//
//  ViewController.swift
//  MyAdventure_GlamGetaway
//
//  Created by Brooke Gates on 6/25/25.
//

import UIKit

class ViewController: UIViewController {
    var currentNodeIndex = 0
    
    let story: [AdventureNode] = [
        AdventureNode(
            storyText: "You receive a golden invite to the Dream Girl Getaway 💖",
            choice1: "Open it excitedly 💌",
            choice2: "Ignore it — sounds sus 😒",
            nextNode1: 1,
            nextNode2: 4
        ),
        AdventureNode(
            storyText: "You’re in! How will you travel?",
            choice1: "Private Jet ✈️ + Rosé 🍾",
            choice2: "Luxury Road Trip 🚗💅",
            nextNode1: 2,
            nextNode2: 3
        ),
        AdventureNode(
            storyText: "You arrived early and got a spa pass! 💆‍♀️",
            choice1: "Massage & Matcha ☕",
            choice2: "Try a new glow serum 💫",
            nextNode1: nil,
            nextNode2: nil
        ),
        AdventureNode(
            storyText: "Your car broke down in the desert! No WiFi 😱",
            choice1: "Call your ex 🙄",
            choice2: "Try to hitchhike 🚶‍♀️",
            nextNode1: nil,
            nextNode2: nil
        ),
        AdventureNode(
            storyText: "Zendaya posted from the island... and you missed it 😭",
            choice1: "Cry and stalk her IG 💔",
            choice2: "Book next year’s trip 📅",
            nextNode1: nil,
            nextNode2: nil
        )
    ]
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    func updateUI() {
        let currentNode = story[currentNodeIndex]
        storyLabel.text = currentNode.storyText
        choice1Button.setTitle(currentNode.choice1, for: .normal)
        choice2Button.setTitle(currentNode.choice2, for: .normal)
    }
    @IBAction func choiceMade(_ sender: UIButton) {
        let currentNode = story[currentNodeIndex]
        
        if sender == choice1Button, let next = currentNode.nextNode1 {
            currentNodeIndex = next
        } else if sender == choice2Button, let next = currentNode.nextNode2 {
            currentNodeIndex = next
        }
        
        updateUI()
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // background image
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "backgroundClouds")
        backgroundImage.contentMode = .scaleAspectFill
        backgroundImage.translatesAutoresizingMaskIntoConstraints = false

        view.insertSubview(backgroundImage, at: 0)

        // edges of the screen
        NSLayoutConstraint.activate([
            backgroundImage.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImage.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            backgroundImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundImage.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])

        updateUI()
    }
}
