//
//  ViewController.swift
//  TicTacToe
//
//  Created by Ana Luisa Rachaus on 03/04/24.
//
// cor da View view.backgroundColor = UIColor(red: 200/255, green: 140/255, blue: 170/255, alpha: 1.0)

import UIKit

class ViewController: UIViewController {

    enum Troca {
        case primeiro
        case segundo
    }

    @IBAction func botaoJogo(_ sender: UIButton) {
        acaoJogo(sender)
    }

    @IBOutlet var arrayBotao: [UIButton]!

    var primeiraVez = Troca.segundo
    var vezAtual = Troca.segundo

    var o = "O"
    var x = "X"

    override func viewDidLoad() {
        super.viewDidLoad()

       //  for botao in arrayBotao {
       //      botao.setTitle(" ", for: .normal)
       //  }

    }

    func acaoJogo(_ sender: UIButton) {

        if (sender.title(for: .normal) == nil) {

            if vezAtual == Troca.primeiro {

                sender.setTitle(o, for: .normal)
                vezAtual = Troca.segundo

            } else if vezAtual == Troca.segundo {

                sender.setTitle(x, for: .normal)
                vezAtual = Troca.primeiro

            }
        }
    }


}

