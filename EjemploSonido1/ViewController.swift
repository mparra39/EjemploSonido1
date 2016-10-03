//
//  ViewController.swift
//  EjemploSonido1
//
//  Created by Administrador on 30/09/16.
//  Copyright © 2016 ITESO. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {

    private var miSonido: SystemSoundID = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let sonidoURL = Bundle.main.url(forResource: "prueba", withExtension: "aiff")
    
        AudioServicesCreateSystemSoundID(sonidoURL! as CFURL, &miSonido)
    }
    
    
    @IBAction func play() {
        
        AudioServicesPlaySystemSound(miSonido)
    }
    
    //hola


}

