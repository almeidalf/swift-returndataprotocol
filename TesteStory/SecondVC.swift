//
//  SecondVC.swift
//  TesteStory
//
//  Created by Reply on 17/09/20.
//  Copyright © 2020 storydelegate. All rights reserved.
//
import UIKit

protocol retornaDados {
    func dadosRecebidos(dados: String)
}

class SecondVC: UIViewController {
    
    var delegate : retornaDados?
    var data = ""
    
    @IBOutlet weak var lblDados: UILabel!
    @IBOutlet weak var textFieldDados: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblDados.text = data
    }
    
    @IBAction func retornarDados(_ sender: Any) {
        
        delegate?.dadosRecebidos(dados: textFieldDados.text!)
        dismiss(animated: true, completion: nil)
        
    }
}
