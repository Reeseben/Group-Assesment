//
//  CharacterStatsViewController.swift
//  GroupAssesment
//
//  Created by Delstun McCray on 9/13/21.
//

import UIKit

class CharacterStatsViewController: UIViewController {

    //MARK: - Properties
    var character: Character?
    
    //MARK: - Outlet
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bioLabel: UILabel!
    @IBOutlet weak var armorLabel: UILabel!
    @IBOutlet weak var hpLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()

    }
    
    func updateViews() {
        guard let character = character else { return }
        
        
        let underlineAttriString = NSAttributedString(string: character.name,
                                                  attributes: [NSAttributedString.Key.underlineStyle: NSUnderlineStyle.single.rawValue])
            nameLabel.attributedText = underlineAttriString
        bioLabel.text = character.bio
        profileImageView.image = character.photoTwo
        armorLabel.text = "\(character.armor)"
        hpLabel.text = "\(character.hp)"
    }


}
