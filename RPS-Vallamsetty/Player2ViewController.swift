//
//  SecondViewController.swift
//  RPS-lastname
//
//  Created by Vallamsetty,Revanth on 2/15/18.
//  Copyright © 2018 Vallamsetty,Revanth. All rights reserved.
//

import UIKit

class Player2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillDisappear(_ animated: Bool) {
        if AppDelegate.model.player2choice != .None
        {
            BTN2Rock.isEnabled=false
            BTN2Paper.isEnabled=false
            BTN2Scissors.isEnabled=false
            BTN2Lizard.isEnabled=false
            BTNSpock.isEnabled=false
            LBLsecond.text="Selection is already made"
            TFPlayerName.isEnabled=false
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        if AppDelegate.model.player2choice != .None
        {
            BTN2Rock.isEnabled=false
            BTN2Paper.isEnabled=false
            BTN2Scissors.isEnabled=false
            BTN2Lizard.isEnabled=false
            BTNSpock.isEnabled=false
            TFPlayerName.isEnabled=false
            LBLsecond.text="Selection is already made"
        }
        else
        {
            BTN2Rock.isEnabled=true
            BTN2Paper.isEnabled=true
            BTN2Scissors.isEnabled=true
            BTN2Lizard.isEnabled=true
            BTNSpock.isEnabled=true
            LBLsecond.text="Make a selection"
        }
    }
    @IBOutlet weak var LBLsecond: UILabel!
    @IBOutlet weak var TBIPlayer2: UITabBarItem!
    
    @IBOutlet weak var BTNSpock: UIButton!
    @IBOutlet weak var BTN2Lizard: UIButton!
    @IBOutlet weak var BTN2Scissors: UIButton!
    @IBOutlet weak var BTN2Paper: UIButton!
    @IBOutlet weak var BTN2Rock: UIButton!
    
    @IBAction func TF2PlayerName(_ sender: UITextField) {
        let Name:String = TFPlayerName.text!
        if Name != ""
        {
            TBIPlayer2.title = Name
            AppDelegate.model.player2Name = Name
        }
        else
        {
            AppDelegate.model.player2Name = "player2"
        }
    }
    
   
    @IBOutlet weak var TFPlayerName: UITextField!
    @IBAction func BTNRock(_ sender: UIButton) {
        AppDelegate.model.choosePlayer2(pick:.Rock)
        LBLsecond.text="selection has been made"
    }
    
    @IBAction func BTNPaper(_ sender: UIButton) {
        AppDelegate.model.choosePlayer2(pick:.Paper)
        LBLsecond.text="selection has been made"
    }
    
    @IBAction func BTNScissors(_ sender: UIButton) {
        AppDelegate.model.choosePlayer2(pick:.Scissors)
        LBLsecond.text="selection has been made"
    }
    
    @IBAction func BTNLizard(_ sender: UIButton) {
        AppDelegate.model.choosePlayer2(pick:.Lizard)
        LBLsecond.text="selection has been made"
    }
    
    @IBAction func BTN2Spock(_ sender: UIButton) {
        AppDelegate.model.choosePlayer2(pick:.Spock)
        LBLsecond.text="selection has been made"
    }
    
}

