//
//  AdventureNode.swift
//  MyAdventure_GlamGetaway
//
//  Created by Brooke Gates on 6/25/25.
//

import Foundation

// This holds each "scene" in my story
struct AdventureNode {
    let storyText: String          // 💬 What the user sees as the story
    let choice1: String            // 💅 First button option
    let choice2: String            // 💄 Second button option
    let nextNode1: Int?            // 🌸 Index to go to if choice1 is picked
    let nextNode2: Int?            // ✨ Index to go to if choice2 is picked
}
