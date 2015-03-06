//
//  TextViewController.swift
//  Psychologist
//
//  Created by Leslie Yang on 5/3/15.
//  Copyright (c) 2015 SeeFeel App House. All rights reserved.
//

import UIKit

class TextViewController: UIViewController {

    
    @IBOutlet weak var TextView: UITextView!{
        didSet{
            TextView.text = text
        }
    }
    
    var text :String = ""{
        didSet{
            TextView?.text = text
        }
    }

}
