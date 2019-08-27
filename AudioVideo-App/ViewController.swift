//
//  ViewController.swift
//  AudioVideo-App
//
//  Created by Hassan Mostafa on 3/8/18.
//  Copyright © 2018 Hassan Mostafa. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player = AVAudioPlayer()

    @IBOutlet weak var slider: UISlider!
    @IBAction func slideButton(_ sender: Any) {
        player.volume = slider.value
    }
    @IBAction func playButton(_ sender: Any) {
        let path = Bundle.main.path(forResource: "omar", ofType: "mp3")
        let url: URL = URL(string: path!)!
        player = try! AVAudioPlayer(contentsOf: url)
        player.play()
    }
    
    @IBAction func muteButton(_ sender: Any) {
        player.volume = 0
    }
    @IBAction func stopButton(_ sender: Any) {
        player.stop()
    }
    @IBAction func pauseButton(_ sender: Any) {
        player.pause()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }
}

