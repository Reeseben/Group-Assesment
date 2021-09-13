//
//  Character.swift
//  GroupAssesment
//
//  Created by Delstun McCray on 9/13/21.
//

import Foundation
import UIKit

class Character {
    var name: String
    var hp: Int
    var photo: UIImage?
    var bio: String
    var armor: Int
    
    init(name: String, bio: String, photo: UIImage?, hp: Int, armor: Int) {
        self.name = name
        self.bio = bio
        self.photo = photo
        self.hp = hp
        self.armor = armor
    }
}
