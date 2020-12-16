//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    var currentPos : Int;
    let storyElements : [Story];
    
    init() {
        self.currentPos = 1;
        self.storyElements =
            [Story(story: "You wake up on a pile of autumn leaves...", choiceOne: "stir up", choiceTwo: "stay lying down"),
             
             Story(story: "You stand up, rustling the leaves of your clothes. You survey your surrounding, the sky is a orange sunset and the trees around you are wrinkled and baren. You notice an injured doe on your left...", choiceOne: "Approach the doe directly", choiceTwo: "Brandish your knife and survey the surrounding"),
             Story(story: "You edge yourself deeper into the leaves, they crinkle excitedly, acceptedely knowing that ypu have chosen to lie within them; you edge towards a sleep but notice an injured bird perched upon a baren branch...", choiceOne: "Approach the bird directly", choiceTwo: "Brandish your bow and survey your surrounding"),

             Story(story: "As you pace yourself towards the injured doe, you notice its laboured breathing...", choiceOne: "End its suffering", choiceTwo: ""),
             Story(story: "Tree", choiceOne: "Bush", choiceTwo: "haha"),
             Story(story: "B", choiceOne: "L", choiceTwo: "R"),
             Story(story: "C", choiceOne: "L", choiceTwo: "R"),
             Story(story: "Courage", choiceOne: "...", choiceTwo: "..."),
             Story(story: "Wisdom", choiceOne: "...", choiceTwo: "..."),
             Story(story: "Cunning", choiceOne: "...", choiceTwo: "..."),
             Story(story: "Charisma", choiceOne: "...", choiceTwo: "..."),
             Story(story: "Caring", choiceOne: "...", choiceTwo: "..."),
             Story(story: "Daring", choiceOne: "...", choiceTwo: "..."),
             Story(story: "Stolid", choiceOne: "...", choiceTwo: "..."),
             Story(story: "Dark", choiceOne: "...", choiceTwo: "...")
            ]
    }
    
    func getCurrentText() -> String {
        return self.storyElements[self.currentPos - 1].story
    }
    
    func getChoiceOne() -> String {
        return self.storyElements[self.currentPos].choiceOne
    }
    
    func getChoiceTwo() -> String {
        return self.storyElements[self.currentPos].choiceTwo
    }
    
    mutating func goLeft() {
        if (self.currentPos * 2) >= self.storyElements.count {
            self.reset()
        }
        self.currentPos = self.currentPos * 2
        
    }
    
    mutating func goRight() {
        if (self.currentPos * 2 + 1) >= self.storyElements.count {
            self.reset()
        }
        self.currentPos = self.currentPos * 2 + 1
        
    }
    
    mutating func reset() {
        self.currentPos = 0;
    }
}
