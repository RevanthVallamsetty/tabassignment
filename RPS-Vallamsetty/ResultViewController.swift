//
//  ResultViewController.swift
//  RPS-lastname
//
//  Created by Vallamsetty,Revanth on 2/15/18.
//  Copyright © 2018 Vallamsetty,Revanth. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let p1 = AppDelegate.model.player1Name
        let p2 = AppDelegate.model.player2Name
        if AppDelegate.model.haveResult()
        {
            LBLResult.text = AppDelegate.model.winner()
            LBLPlayerResponse.text="Both the players have responded"
        }
        else
        {
            LBLResult.text = "Somethings fishy, Players response needed"
            if AppDelegate.model.player1choice == .None
            {
                LBLPlayerResponse.text="\(p1) didnot respond"
            }
            if AppDelegate.model.player2choice == .None
            {
                LBLPlayerResponse.text="\(p2) didnot respond"
            }
            if AppDelegate.model.player1choice == .None && AppDelegate.model.player2choice == .None
            {
                LBLPlayerResponse.text="Both the players didnot respond"
            }
        }
        
        LBLPlayer1count.text="\(p1) won \(AppDelegate.model.player1wincount) times"
        LBLPlayer2Count.text="\(p2) won \(AppDelegate.model.player2wincount) times"
        
    }
    
    
    @IBOutlet weak var LBLPlayerResponse: UILabel!
    @IBOutlet weak var LBLResult: UILabel!
    
    @IBOutlet weak var LBLPlayer1count: UILabel!
    @IBOutlet weak var LBLPlayer2Count: UILabel!
    @IBAction func BTNReset(_ sender: Any) {
        AppDelegate.model.choosePlayer1(pick: .None)
        AppDelegate.model.choosePlayer2(pick: .None)
        LBLResult.text = "Make your selection on the other tabs"
        LBLPlayerResponse.text=""
        self.tabBarController?.selectedIndex=0
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
