//
//  ViewController.swift
//  VideoPlayer
//
//  Created by Akshit jangra on 15/04/18.
//  Copyright © 2018 Akshit jangra. All rights reserved.
//

import UIKit
import AVKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func PlayPressed(_ sender: UIButton) {
        if let filePath = Bundle.main.url(forResource: "Video", withExtension: "mp4") {
           let video = AVPlayer(url: filePath)
            let videoController = AVPlayerViewController()
            videoController.player = video
            present(videoController, animated: true, completion: {
                video.play()
            })
            
        }
    }
}

