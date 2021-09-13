//
//  ResultsViewController.swift
//  GroupAssesment
//
//  Created by Kyle Warren on 9/13/21.
//

import UIKit
import AVFoundation

class ResultsViewController: UIViewController {

    //MARK: - OUTLETS
    @IBOutlet weak var characterLabel: UILabel!
    @IBOutlet weak var characterImageView: UIImageView!
    
    
    
    //MARK: - PROPERTIES
    var character: Character?
    var audio:AVPlayer!
    
    //MARK: -  LIFECYCLES
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        playAlarm()
    }
    
    //MARK: - METHODS

    func updateViews() {
        guard let character = character else { return }
        characterLabel.text = character.name
        characterImageView.image = character.photo
    }
    
    func playAlarm() {
        // need to declare local path as url
        let url = Bundle.main.url(forResource: "boo", withExtension: "m4a")
        // now use declared path 'url' to initialize the player
        audio = AVPlayer.init(url: url!)
        // after initialization play audio its just like click on play button
        audio.play()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
