//
//  LaunchScreenViewController.swift
//  GroupAssesment
//
//  Created by Ben Erekson on 9/13/21.
//

import UIKit
import AVFoundation

class LaunchScreenViewController: UIViewController {
    //MARK: - IBOutlets
    @IBOutlet var videoLayer: UIView!
    
    //MARK: - Lifecycles
    override func viewDidLoad() {
        super.viewDidLoad()
        loadViewIfNeeded()
        guard var path = Bundle.main.path(forResource: "LaunchScreen", ofType: "mp4") else { return }
        if videoLayer.frame.width < 500 {
            path = Bundle.main.path(forResource: "iphoneLaunchScreen", ofType: "mov") ?? "Fail"
        }
        
        let player = AVPlayer(url: URL(fileURLWithPath: path))
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.frame = videoLayer.bounds
        playerLayer.videoGravity = .resizeAspectFill
        self.videoLayer.layer.addSublayer(playerLayer)
        
        player.play()
        
        NotificationCenter.default.addObserver(self, selector: #selector(videoDidEnd), name: .AVPlayerItemDidPlayToEndTime, object: nil)
        
    }
    
    //MARK: - Helper Methods
    @objc func videoDidEnd() {
        NotificationCenter.default.removeObserver(self)
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        DispatchQueue.main.async {
            let vc = storyboard.instantiateViewController(identifier: "mainScreensVC")
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: true, completion: nil)
        }
    }
    
}
