//
//  ViewController.swift
//  TesteStory
//
//  Created by Reply on 17/09/20.
//  Copyright © 2020 storydelegate. All rights reserved.
//

import UIKit

class ViewController: UIViewController, retornaDados {

    @IBOutlet weak var lblViewController: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonSender(_ sender: Any) {
        
        performSegue(withIdentifier: "segundaView", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segundaView" {
            let segundaVC = segue.destination as! SecondVC
            
            segundaVC.data = textField.text!
            segundaVC.delegate = self
            
        }
    }
    
    func dadosRecebidos(dados: String) {
        lblViewController.text = dados
    }
    
}

