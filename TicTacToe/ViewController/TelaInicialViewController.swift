//
//  TelaInicialViewController.swift
//  TicTacToe
//
//  Created by Ana Luisa Rachaus on 07/04/24.
//

import UIKit

class TelaInicialViewController: UIViewController {

    @IBOutlet weak var botaoTelaInicial: UIButton!
    @IBAction func botaoPlay(_ sender: UIButton) {}

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configuraLayout()
    }

    func configuraLayout() {

        botaoTelaInicial.layer.cornerRadius = 12.0
    }

}
