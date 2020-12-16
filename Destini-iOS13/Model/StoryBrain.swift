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

             Story(story: "As you pace yourself towards the injured doe, you notice its laboured breathing...", choiceOne: "Perfect, you extend your knife and end its suffering, you will need its meat to get out of this forest.", choiceTwo: "Care for the Doe, bandage its injuries. You become friends with the woodland animal, and she/he follows you around like a dog would."),
             Story(story: "There are strange marking on the tree, a footprint on the soft soil warns you of a bear. A bear suddenly tunnels its way from the ground and grabs your ankles, offering you \" fresh baked goods, if you come along \". What do you do?", choiceOne: "Slash down severing the bears hands from your feet. Another one bites the dust. You moonwalk your way out of the forest.", choiceTwo: "Fresh baked goods? If never had I ever said no! You follow the bear to his house, leaving the weeping doe behind to enjoy a plate of fresh baked good. You baked as hell."),
             Story(story: "As you walk to the eagle it swoops down and pecks at your shirt", choiceOne: "You dodge nimbly and grabe it by its nape and then throw it up into the air, followed by a swift karate chop back down into the ground. You jump up and then do a sick elbow drop. Mexican music plays in the background.", choiceTwo: "You endure its frivilous pecking. no power without pain. You relish in this ordeal, while metal music plays in the bacground and blood begins to streak across your face."),
             Story(story: "You climb ontop of a tree, like a monkey, and see as far as the eye can see. The mountains pierce the cloads in the distance; rainforest grip the earth in its green mossy grasp; there is a sunlit river that follows the horizon, glimerring in black essense. Among all this you see human tracks, leading in the opposite direction. You know where to go.", choiceOne: "Onwards to adventure! No real adventure is without a ounce of danger.", choiceTwo: "Civilization! Yes back to my computer! Anime, and a soft bed, *frothing in delight*"),
             
             Story(story: "You have chosen: The Realist", choiceOne: "Restart", choiceTwo: "Restart"),
             Story(story: "You have chosen: The Optimist", choiceOne: "Restart", choiceTwo: "Restart"),
             Story(story: "The have chosen: The Stylish", choiceOne: "Restart", choiceTwo: "Restart"),
             Story(story: "The have chosen: The Wonderland", choiceOne: "Restart", choiceTwo: "Restart"),
             Story(story: "You have chosen: The Undertaker", choiceOne: "Restart", choiceTwo: "Restart"),
             Story(story: "You have chosen: The Masochist", choiceOne: "Restart", choiceTwo: "Restart"),
             Story(story: "You have chosen: The explorer", choiceOne: "Restart", choiceTwo: "Restart"),
             Story(story: "You have chosen: The Programmar", choiceOne: "Restart", choiceTwo: "Restart")
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
