//
//  ViewController.swift
//  MemeMaker
//
//  Created by Stefanos Kostaras on 12/03/2019.
//  Copyright © 2019 StefanosK27. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let firstTop = CaptionOption(emoji: "🤓", caption: "Το αγαπημένο φαγητό του μπαμπά;")
    let secondTop = CaptionOption(emoji: "👩🏼‍🦰", caption: "Το αγαπημένο φαγητό της μαμάς;")
    let thirdTop = CaptionOption(emoji: "🧒🏻", caption: "Το αγαπημένο φαγητό του Διονύση;;;;;")
    
    let firstBottom = CaptionOption(emoji: "🍔", caption: "Ένα ζουμερό burger!")
    let secondBottom = CaptionOption(emoji: "🍝", caption: "Μακαρόνιαααααα!!!")
    let thirdBottom = CaptionOption(emoji: "🍕", caption: "Urghhh, πίτσαααα...")
    
    var topChoices = [CaptionOption]()
    var bottomChoices = [CaptionOption]()
    
    @IBOutlet weak var topCaptionSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var bottomCaptionSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var topCaptionLabel: UILabel!
    
    @IBOutlet weak var bottomCaptionLabel: UILabel!
    
    @IBAction func segmentedControl(_ sender: Any) {
        showCaption()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        topChoices += [firstTop, secondTop, thirdTop]
        bottomChoices += [firstBottom, secondBottom, thirdBottom]
        
        topCaptionSegmentedControl.removeAllSegments()
        for topChoice in topChoices {
        topCaptionSegmentedControl.insertSegment(withTitle: topChoice.emoji, at: topChoices.count, animated: false)
        }
        topCaptionSegmentedControl.selectedSegmentIndex = 0
        
        bottomCaptionSegmentedControl.removeAllSegments()
        for bottomChoice in bottomChoices {
            bottomCaptionSegmentedControl.insertSegment(withTitle: bottomChoice.emoji, at: bottomChoices.count, animated: false)
        }
        bottomCaptionSegmentedControl.selectedSegmentIndex = 0
        
        let font = UIFont.systemFont(ofSize: 42)
        topCaptionSegmentedControl.setTitleTextAttributes([NSAttributedString.Key.font: font],
                                                for: .normal)
        bottomCaptionSegmentedControl.setTitleTextAttributes([NSAttributedString.Key.font: font],
                                                          for: .normal)
        
        showCaption()
    
    }
    
    func showCaption() {
        topCaptionLabel.text = topChoices[topCaptionSegmentedControl.selectedSegmentIndex].caption
        bottomCaptionLabel.text = bottomChoices[bottomCaptionSegmentedControl.selectedSegmentIndex].caption
    }
    
}

