//
//  DiagnosedHappinessViewController.swift
//  Psychologist
//
//  Created by Leslie Yang on 5/3/15.
//  Copyright (c) 2015 SeeFeel App House. All rights reserved.
//

import UIKit

class DiagnosedHappinessViewController: HappinessViewController, UIPopoverPresentationControllerDelegate
{
    override var happiness : Int{
        didSet{
            diagnosticHistory += [happiness]
        }
    }
    
    private let defaults = NSUserDefaults.standardUserDefaults()
    
    var diagnosticHistory : [Int] {
        get{ return defaults.objectForKey(History.DefaultKey) as? [Int] ?? []}
        set{ defaults.setObject(newValue, forKey: History.DefaultKey)}
    }
    
    private struct History{
        static var SegueIdentifier = "Show Diagnostic History"
        static var DefaultKey = "DiagnosedHappinessViewController.History"
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let identifier = segue.identifier{
            switch identifier{
            case History.SegueIdentifier:
                if let hvc = segue.destinationViewController as? TextViewController{
                    if let ppc = hvc.popoverPresentationController {
                        ppc.delegate = self
                    }
                    hvc.text = "\(diagnosticHistory)"
                }
            default:break
            }
        }
    }
    
    func adaptivePresentationStyleForPresentationController(controller: UIPresentationController) -> UIModalPresentationStyle {
        return UIModalPresentationStyle.None
    }
}
