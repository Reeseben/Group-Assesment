//
//  CharacterCollectionViewCell.swift
//  GroupAssesment
//
//  Created by Delstun McCray on 9/13/21.
//

import UIKit

class CharacterCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var characterImageView: UIImageView!
    
    func displayImageFor(character: Character) {
        characterImageView.image = character.photo
        characterImageView.contentMode = .scaleAspectFill
    }
}
