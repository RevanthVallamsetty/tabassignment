//
//  RPSModel.swift
//  RPS-lastname
//
//  Created by Vallamsetty,Revanth on 2/15/18.
//  Copyright © 2018 Vallamsetty,Revanth. All rights reserved.
//

import Foundation

class RPSModel
{
    private static var SharedRPSModel:RPSModel{
        let rpsmodel=RPSModel()
        return rpsmodel
    }
    
    private var _player1Name:String="Player 1"
    var player1Name:String{
        get{
            return _player1Name
        }
        set{
            _player1Name = newValue
            
            
        }
    }
    private var _player2Name:String="Player 2"
    var player2Name:String{
        get{
            return _player2Name
        }
        set{
            _player2Name = newValue
            
        }
    }
    enum Choice {
        case None,Rock,Paper,Scissors,Lizard,Spock
    }
    private var _player1choice:Choice = .None
    var player1choice:Choice{
        get{
            return _player1choice
        }
        set{
            _player1choice=newValue
        }
    }
    private var _player2choice:Choice = .None
    var player2choice:Choice{
        get{
            return _player2choice
        }
        set{
            _player2choice=newValue
        }
    }
    private var _player1wincount:Int=0
    var player1wincount:Int{
        get{
            return _player1wincount
        }
        set{
            _player1wincount=newValue
        }
    }
    private var _player2wincount:Int=0
    var player2wincount:Int{
        get{
            return _player2wincount
        }
        set{
            _player2wincount=newValue
        }
    }
    
    func reset() {
        player1choice = .None
        player2choice = .None
    }
    private init() {
        player1choice = .None
        player2choice = .None
    }
    func haveResult() -> Bool {
      return player1choice != .None && player2choice != .None
    }
    func winner() -> String{
        
            if (player1choice == .Rock && player2choice == .Paper)||(player1choice == .Rock && player1choice == .Spock) || (player1choice == .Paper && player2choice == .Scissors) || (player1choice == .Paper && player1choice == .Lizard) || (player1choice == .Scissors && player2choice == .Rock) || (player1choice == .Scissors && player1choice == .Spock)||(player1choice == .Lizard && player1choice == .Rock) || (player1choice == .Lizard && player1choice == .Scissors) || (player1choice == .Spock && player1choice == .Paper) || (player1choice == .Spock && player1choice == .Lizard){
                player2wincount+=1
                return "player2 wins"
                
            }
            else if player1choice == player2choice
            {
                return "It's a tie"
            }
            else
            {
                 player1wincount+=1
                return "player1 wins"
               
            }
        
    }
    func choosePlayer1(pick:Choice) {
        player1choice=pick
    }
    func choosePlayer2(pick:Choice) {
        player2choice=pick
    }
    class func sharedrps()->RPSModel
    {
        return SharedRPSModel
    }
}
