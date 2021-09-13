//
//  CharacterController.swift
//  GroupAssesment
//
//  Created by Delstun McCray on 9/13/21.
//

import UIKit

class CharacterController {
    
    
    static var character: [Character] {
        
        let ben = Character(name: "Ben", bio: "K̸̡͚̺̗̝̪̻͚̟͌͐̆̒̃͆̚͝n̸̦̜̪̫͋͂̑̏̅̊̚͝ó̸̡̞̥̻͇̪̫̬̝̽w̸̘̏s̶̛͍̲͆́̈́̀̈́̈́̑̕ ̶̻̩̋͆̊̎̋w̸̢̰͕͎͚̻̟̞̻͐̈́̀͛̓͑̈́͠ḧ̶̩́͛́̉̐͂̅͠ͅǎ̸̰̹͒̑̏̿̄͆̇t̶͇͂̈́́̈́͊̊͂͆͜ ̵̡̯̩̥͓͈̦͖͆̌̌̂͋̐͐̎͘y̵̮̝̹̪͍͋̍͘o̸̲͌̍͑̈̈́̔̊̓u̷̼͕͚͚̩͓͓͔̟̗͛̋̉͋ ̶̹̾̒͌͆̆̇̚͘ḑ̴̝̹̠̯̰͎̩̝̾̊́͂̈́͌̑́̊ỉ̵̛͉̳͕̈́̃͋͛d̷̤̯̜̼̦͌̒̉̄̒͑̈́̊̆", photo: UIImage(named: "bigBen"), hp: 120, armor: 10, photoTwo: UIImage(named: "bigBen"), wins: 0, losses: 0)
        
        let delstun = Character(name: "Delstun", bio: "ℍ𝕒𝕡𝕡𝕖𝕟𝕤 𝕥𝕠 𝕓𝕖 𝕙𝕖𝕣𝕖.", photo: UIImage(named: "pokeDel"), hp: 120, armor: 10, photoTwo: UIImage(named: "pokeDel"), wins: 0, losses: 0)
        
        let kyle = Character(name: "Kyle", bio: "𝒯𝒽𝑒 𝐹𝓊𝓃𝑔𝒾 𝐸𝓍𝓅𝑒𝓇𝓉 🍄, and a fun guy.", photo: UIImage(named: "pokeKyle"), hp: 100, armor: 10, photoTwo: UIImage(named: "pokeKyle"), wins: 0, losses: 0)
        
        let israel = Character(name: "Israel", bio: "ƬΉΣ BΛПΛПΛ BΛПDIƬ 🍌, I promise its a banana.", photo: UIImage(named: "pokeIs"), hp: 10, armor: 150, photoTwo: UIImage(named: "pokeIs"), wins: 0, losses: 0)
        
        let characterNames = [ben, delstun, kyle, israel]
        
        return characterNames
        
    }
    
    
}
