//
//  ViewController.swift
//  Psychologist
//
//  Created by Leslie Yang on 28/2/15.
//  Copyright (c) 2015 SeeFeel App House. All rights reserved.
//

import UIKit

class PsychologistViewController: UIViewController {

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let hvc = segue.destinationViewController as? HappinessViewController{
            if let identifier = segue.identifier{
                switch identifier{
                    case "sad": hvc.happiness = 0
                    case "happy": hvc.happiness = 100
                    default: hvc.happiness = 50
                }
            }
        }
    }

}

