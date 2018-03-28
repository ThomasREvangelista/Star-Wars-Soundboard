//
//  ViewController.swift
//  Star Wars Soundboard
//
//  Created by Nicholas Clark on 3/28/18.
//  Copyright © 2018 Nicholas Clark. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var audioPlayer : AVAudioPlayer!
    let soundArray = ["forcestrong", "swvader02", "force", "chewy_roar", "WilhelmScream", "yodalaughing"]
    var selectedSoundFileName : String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonPressedSound(_ sender: UIButton) {
        selectedSoundFileName = soundArray[sender.tag - 1]
        print(selectedSoundFileName)
        playSound()
    }
    
    func playSound() {
        let soundURL = Bundle.main.url(forResource: selectedSoundFileName, withExtension: "wav")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        audioPlayer.play()
    }


}


