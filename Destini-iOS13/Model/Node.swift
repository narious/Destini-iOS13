//
//  BinaryTree.swift
//  Destini-iOS13
//
//  Created by Michael on 8/12/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct Node<Load> {
    var key : Int;
    let value: Load;
    //Recursive value and infinite space dealt with by using arrays
    var leftChild: [Node]?;
    var rightChild: [Node]?;
    
    mutating func setLeftChild(node: Node) {
        self.leftChild = [node]
    }
    
    mutating func setRightChild(node: Node) {
        self.rightChild = [node]
    }
    
}

