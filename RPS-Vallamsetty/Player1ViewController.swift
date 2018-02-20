//
//  FirstViewController.swift
//  RPS-lastname
//
//  Created by Vallamsetty,Revanth on 2/15/18.
//  Copyright © 2018 Vallamsetty,Revanth. All rights reserved.
//

import UIKit

class Player1ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        if AppDelegate.model.player1choice != .None
        {
            BTN1Rock.isEnabled=false
            BTN1Paper.isEnabled=false
            BTN1Scissors.isEnabled=false
            BTN1Lizard.isEnabled=false
            BTN1Spock.isEnabled=false
            TFPlayerName.isEnabled=false
            LBLFirstselect.text="selection already made"
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        if AppDelegate.model.player1choice != .None
        {
            BTN1Rock.isEnabled=false
            BTN1Paper.isEnabled=false
            BTN1Scissors.isEnabled=false
            BTN1Lizard.isEnabled=false
            BTN1Spock.isEnabled=false
            TFPlayerName.isEnabled=false
            LBLFirstselect.text="selection already made"
        }
        else
        {
            BTN1Rock.isEnabled=true
            BTN1Paper.isEnabled=true
            BTN1Scissors.isEnabled=true
            BTN1Lizard.isEnabled=true
            BTN1Spock.isEnabled=true
            LBLFirstselect.text="Make a selection"
        }
    }
    
    
    
    @IBAction func TF1PlayerName(_ sender: Any) {
        let Name:String = TFPlayerName.text!
        if Name != ""
        {
            TBIPlayer1.title = Name
            AppDelegate.model.player1Name = Name
        }
        else
        {
            AppDelegate.model.player1Name = "Player 1"
        }
    }
    
    @IBOutlet weak var LBLFirstselect: UILabel!
    
    @IBOutlet weak var TFPlayerName: UITextField!
    
    @IBOutlet weak var BTN1Lizard: UIButton!
    @IBOutlet weak var BTN1Paper: UIButton!
    
    @IBOutlet weak var BTN1Spock: UIButton!
    @IBOutlet weak var BTN1Scissors: UIButton!
    @IBOutlet weak var BTN1Rock: UIButton!
    @IBOutlet weak var TBIPlayer1: UITabBarItem!
    
    @IBAction func BTNRock(_ sender: UIButton) {
        AppDelegate.model.choosePlayer1(pick:.Rock)
        LBLFirstselect.text="selection has been made"
    }
    
    @IBAction func BTNPaper(_ sender: UIButton) {
        AppDelegate.model.choosePlayer1(pick:.Paper)
        LBLFirstselect.text="selection has been made"
    }
    
    @IBAction func BTNScissors(_ sender: UIButton) {
        AppDelegate.model.choosePlayer1(pick:.Scissors)
        LBLFirstselect.text="selection has been made"
    }
    @IBAction func BTNLizard(_ sender: UIButton) {
        AppDelegate.model.choosePlayer1(pick:.Lizard)
        LBLFirstselect.text="selection has been made"
    }
    
    @IBAction func BTNSpock(_ sender: UIButton) {
        AppDelegate.model.choosePlayer1(pick:.Spock)
        LBLFirstselect.text="selection has been made"
    }
    
    
}

