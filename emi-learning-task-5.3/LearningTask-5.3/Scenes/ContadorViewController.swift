//
//  ViewController.swift
//  LearningTask-5.3
//
//  Created by rafael.rollo on 12/03/2022.
//

import UIKit

class ContadorViewController: UIViewController {

    @IBOutlet weak var numeroPrincipalLabel: UILabel!
    @IBOutlet weak var numeroIncrementadorLabel: UILabel!
    
    @IBOutlet weak var stepper: UIStepper!
    
    var contador: Contador? {
        didSet {
            guard isViewLoaded, let contador = contador else {return}
            atualizaView(para: contador)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        if let contador = contador {
           return atualizaView(para: contador)
        }
    }

    @IBAction func botaoAddIncremento(_ sender: Any) {
        guard let incremento = contador?.numeroIncrementador else {return}
        contador?.numeroAlterado += incremento
    }
    
    @IBAction func botaoDecrementa(_ sender: Any) {
        guard let decremento = contador?.numeroIncrementador else {return}
        contador?.numeroAlterado -= decremento
    }
    
    @IBAction func buttonStepper(_ sender: UIStepper) {
        contador = Contador(numero: Int(sender.value))
    }
    
    @IBAction func botaoReset(_ sender: Any) {
        contador?.numeroAlterado = 0
        contador?.numeroIncrementador = 1
    }
    
    func atualizaView(para contador: Contador){
        numeroPrincipalLabel.text = String(describing: contador.numeroAlterado)
        numeroIncrementadorLabel.text = String(describing: contador.numeroIncrementador)
        stepper.value = Double(contador.numeroIncrementador)
    }
}


