//
//  CharacterController.swift
//  GroupAssesment
//
//  Created by Delstun McCray on 9/13/21.
//

import UIKit

class CharacterController {
    
    
    static var character: [Character] {
        
        let ben = Character(name: "Ben", bio: "Ţ̸̡̢̢̻͎̰̳̦̯͑̌̍̅̃̕͝͠ẖ̶̤̤͈͗̉͊͜ẹ̸͓̳̱͋̊̃̍̽̓̕͝ͅ ̸̻̤͕̬̑́̀̓͌̍̏̕d̷͙̪͎̜̼̘̱̤̳͓͆̈́̈́̑̅̈́̀́͝e̷̢̋̂̈́́̿̄͗̓̈́͝r̸̛͚͈̩̘͆̿͑̂͜â̵̟̦̭̓̕ͅn̸̝͇͉̘̘͐̓́͘͘g̶̲̫͖̱̮̤̯͎̦̈́͋̅̈̏͜ė̵̡̠͉̘͋̈́̐͘d̴̡̛͔̠̖͈̻̟̹͑̓͆͒͆ ̸̥̉̉̓̈́̚͝p̵͔̬̘̹̈́̎̄̒̆̓̚͝ś̸̭̳̗͔̦̼̩̳͂̾̓̓͗͆͘ͅẙ̴̢̛͙̪̜͉̼̋͛͒̔̔̕c̸̻̉̎h̷͈̹͇͕͑ö̸̢͉̝͇̮̳͈͍̝̣́̐͐͑͝͝p̵͉̗͇̖̳̥̭̯͈͛̍̈́̂̾͑̕͝â̶͙̩͚̬̜͓̈́́̉̈͜t̸̲̺̦͖̜͕̝͖͉̒̇ͅḧ̵̹̒͋̈́̔̋", photo: UIImage(named: "pokeBen"), hp: 120, armor: 10)
        
        let delstun = Character(name: "Delstun", bio: "Happens to be here.", photo: UIImage(named: "pokeDel"), hp: 120, armor: 10)
        
        let kyle = Character(name: "Kyle", bio: "The Fungi Expert, and a fun guy.", photo: UIImage(named: "pokeKyle"), hp: 100, armor: 10)
        
        let israel = Character(name: "Israel", bio: "The Banana Bandit, I promise its a banana.", photo: UIImage(named: "pokeIs"), hp: 10, armor: 150)
        
        let characterNames = [ben, delstun, kyle, israel]
        
        return characterNames
        
    }
    
    
}
