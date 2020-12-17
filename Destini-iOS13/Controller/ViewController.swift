//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain: StoryBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        choice1Button.tag = 1
        choice2Button.tag = 2
        updateUI()
    }
    
    @IBAction func choiceButtonPressed(_ sender: UIButton) {
        if sender.tag == 1 {
            storyBrain.goLeft()
        } else {
            storyBrain.goRight()
        }
        updateUI()
    }
    
    
    func updateUI() {
        print(storyBrain.getCurrentText())
        storyLabel.text = storyBrain.getCurrentText()
        choice1Button.setTitle(storyBrain.getChoiceOne(), for: .normal)
        choice2Button.setTitle(storyBrain.getChoiceTwo(), for: .normal)
    
    }


}

