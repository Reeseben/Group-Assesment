//
//  FightVideoViewController.swift
//  GroupAssesment
//
//  Created by Israel Romero on 9/13/21.
//

import UIKit
import AVKit
import AVFoundation

class FightVideoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "challenger", ofType: "mp4")!))
        
        let layer = AVPlayerLayer(player:  player)
        layer.frame = view.bounds
        layer.videoGravity = .resizeAspectFill
        self.view.layer.addSublayer(layer)
        
        player.play()
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
