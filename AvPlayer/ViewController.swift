//
//  ViewController.swift
//  AvPlayer
//
//  Created by showxjn on 17/3/31.
//  Copyright © 2017年 Apress. All rights reserved.
//

import UIKit

import AVKit
import AVFoundation

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		let session = AVAudioSession.sharedInstance()
        do {
			try session.setCategory(AVAudioSessionCategoryPlayback)
		} catch is Error {
			print("error")
		}
		
		let _player = AVPlayer(playerItem: AVPlayerItem(url: URL(string: "https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4")!))
		let playervc = AVPlayerViewController()
		playervc.player = _player
		playervc.showsPlaybackControls = true
		
		self.addChildViewController(playervc)
		playervc.view.frame = CGRect(x: 0, y: 0, width: 400, height: 300)
		view.addSubview(playervc.view)
		playervc.player?.play()
		
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

