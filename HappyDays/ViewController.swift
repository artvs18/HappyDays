//
//  ViewController.swift
//  HappyDays
//
//  Created by Artemy Volkov on 10.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultButton: UIButton!
    @IBOutlet weak var infoLabel: UILabel!
    private var numberOfDays = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultButton.layer.cornerRadius = 15
    }

    @IBAction func datePicker(_ sender: UIDatePicker) {
        sender.maximumDate = Date()
        let range = sender.date..<Date.now
        numberOfDays = range.formatted(.components(style: .wide, fields: [.day]))
    }
    
    @IBAction func resultButtonTapped() {
        infoLabel.text = "You've been enjoying life for \(numberOfDays)"
    }
}



