//
//  NewViewController.swift
//  ZZ DataPass
//
//  Created by Delvina Jenoline on 11/08/21.
//  Copyright © 2021 Delvina Jenoline. All rights reserved.
//

import UIKit
import AVFoundation

class NewViewController: UIViewController {

    var player : AVAudioPlayer = AVAudioPlayer()
    
    @IBOutlet weak var myprogress: UIProgressView!
    @IBOutlet weak var imagee: UIImageView!
    @IBOutlet weak var titlelbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        titlelbl.text = NameArray[myIndex]
        imagee.image = ImageArray[myIndex]

        do{
            let AudioPath = Bundle.main.path(forResource: NameArray[myIndex], ofType: ".mp3")
            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: AudioPath!)as URL)
        } catch{
            print("errors")
        }
    }

    @IBAction func play(_ sender: UIButton) {
        player.prepareToPlay()
        player.play()
        myprogress.setProgress(Float(player.duration), animated: true)
        Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) { (t1) in
        self.view.backgroundColor = UIColor(red: CGFloat(Float(drand48())), green: CGFloat(Float(drand48())), blue: CGFloat(Float(drand48())), alpha: 1.0)
        }
    
    }
    
    @IBAction func pause(_ sender: UIButton) {
        player.pause()
    }
    
}
