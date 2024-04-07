//
//  ViewController.swift
//  TicTacToe
//
//  Created by Ana Luisa Rachaus on 03/04/24.
//


import UIKit

class ViewController: UIViewController {

    enum Troca {
        case primeiroJogador
        case segundoJogador
    }

    @IBOutlet weak var vezLabel: UILabel!
    @IBOutlet weak var ganhadorLabel: UILabel!
    @IBAction func botaoJogo(_ sender: UIButton) {
        vitoria(sender)
        acaoJogo(sender)
    }

    @IBOutlet weak var a1: UIButton!
    @IBOutlet weak var a2: UIButton!
    @IBOutlet weak var a3: UIButton!
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var c1: UIButton!
    @IBOutlet weak var c2: UIButton!
    @IBOutlet weak var c3: UIButton!
    @IBOutlet var arrayBotao: [UIButton]!

    var primeiraVez = Troca.segundoJogador
    var vezAtual = Troca.segundoJogador

    var o = "O"
    var x = "X"

    override func viewDidLoad() {
        super.viewDidLoad()
        configuraLayout()

    }

    func acaoJogo(_ sender: UIButton) {

        if (sender.title == " " && sender.isEnabled) {

            if vezAtual == Troca.primeiroJogador {

                sender.setTitle(o, for: .normal)
                vezAtual = Troca.segundoJogador
                vezLabel.text = x

            } else if vezAtual == Troca.segundoJogador {

                sender.setTitle(x, for: .normal)
                vezAtual = Troca.primeiroJogador
                vezLabel.text = o

            }

        }

    }

    func disabilitaBotoes() {

        for botao in arrayBotao {

            botao.isEnabled = false

        }
    }

    func validaVitoria(jogador: String) {

        // Horizontal
        if a1.title == jogador && a2.title == jogador && a3.title == jogador {

            finalizaTela(jogador: jogador)

        } else if b1.title == jogador && b2.title == jogador && b3.title == jogador {

            finalizaTela(jogador: jogador)

        } else if c1.title == jogador && c2.title == jogador && c3.title == jogador {

            finalizaTela(jogador: jogador)

            // Vertical
        } else if a1.title == jogador && b1.title == jogador && c1.title == jogador {

            finalizaTela(jogador: jogador)

        } else if a2.title == jogador && b2.title == jogador && c2.title == jogador {

            finalizaTela(jogador: jogador)

        } else if a3.title == jogador && b3.title == jogador && c3.title == jogador {

            finalizaTela(jogador: jogador)

            // Diagonal
        } else if a1.title == jogador && b2.title == jogador && c3.title == jogador {

            finalizaTela(jogador: jogador)

        } else if a3.title == jogador && b2.title == jogador && c1.title == jogador {

            finalizaTela(jogador: jogador)

        }

    }

    func vitoria(_ sender: UIButton) {

        validaVitoria(jogador: o)
        validaVitoria(jogador: x)

    }

    func finalizaTela(jogador: String) {

        ganhadorLabel.text = "Ganhador:\(jogador)"
        disabilitaBotoes()

    }

    func configuraLayout() {

        navigationItem.hidesBackButton = true
        
    }

}

extension UIButton {

    var title: String? {
        return titleLabel?.text
    }

}



