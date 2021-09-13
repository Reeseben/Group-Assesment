//
//  CharacterCollectionViewController.swift
//  GroupAssesment
//
//  Created by Delstun McCray on 9/13/21.
//

import UIKit


class CharacterCollectionViewController: UICollectionViewController {
    
    //MARK: - Properties
    var character: [Character] = []

    override func viewDidLoad() {
        super.viewDidLoad()
     
    }


    // MARK: UICollectionViewDataSource

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 4
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "characterCell", for: indexPath) as? CharacterCollectionViewCell else { return UICollectionViewCell() }
        
        let character = CharacterController.character[indexPath.row]
        
        cell.displayImageFor(character: character)
    
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailVC" {
            guard let cell = sender as? CharacterCollectionViewCell,
                  let indexPath = collectionView.indexPath(for: cell),
                  let destinationVC = segue.destination as? CharacterStatsViewController else { return }
            let characterToSend = CharacterController.character[indexPath.row]
            destinationVC.character = characterToSend
        }
    }

}//end of class

extension CharacterCollectionViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
       
       let width  = view.frame.width * 0.45
        
       return CGSize(width: width, height: width * 4 / 3)
   }
   
   func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
       
       let oneCellWidth = view.frame.width * 0.45
       let cellsTotalWidth = oneCellWidth * 2
       let leftoverWidth = view.frame.width - cellsTotalWidth
       let inset = leftoverWidth / 3
       
       return UIEdgeInsets(top: inset, left: inset, bottom: 0, right: inset)
   }
}//end of extension
