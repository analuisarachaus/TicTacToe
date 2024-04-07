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
        case primeiroJogador
        case segundoJogador
    }

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

        //  for botao in arrayBotao {
        //      botao.setTitle(" ", for: .normal)
        //  }

    }

    func acaoJogo(_ sender: UIButton) {

        if (sender.title == " " && sender.isEnabled) {

            if vezAtual == Troca.primeiroJogador {

                sender.setTitle(o, for: .normal)
                vezAtual = Troca.segundoJogador

            } else if vezAtual == Troca.segundoJogador {

                sender.setTitle(x, for: .normal)
                vezAtual = Troca.primeiroJogador

            }

        }

    }

    func disabilitaBotoes() {

        for botao in arrayBotao {

            botao.isEnabled = false

        }
    }


    func vitoria(_ sender: UIButton) {

        // Horizontal
        if a1.title == o && a2.title == o && a3.title == o {

            print("Jogador \(o) ganhou o jogo!")

            disabilitaBotoes()

        } else if a1.title == x && a2.title == x && a3.title == x {

            print("Jogador \(x) ganhou o jogo!")
            disabilitaBotoes()


        } else if b1.title == o && b2.title == o && b3.title == o {

            print("Jogador \(o) ganhou o jogo!")
            disabilitaBotoes()

        } else if b1.title == x && b2.title == x && b3.title == x {

            print("Jogador \(x) ganhou o jogo!")
            disabilitaBotoes()



        } else if c1.title == o && c2.title == o && c3.title == o {

            print("Jogador \(o) ganhou o jogo!")
            disabilitaBotoes()

        } else if c1.title == x && c2.title == x && c3.title == x {

            print("Jogador \(x) ganhou o jogo!")
            disabilitaBotoes()






            // Vertical
        } else if a1.title == o && b1.title == o && c1.title == o {

            print("Jogador \(o) ganhou o jogo!")
            disabilitaBotoes()



        } else if a1.title == x && b1.title == x && c1.title == x {

            print("Jogador \(x) ganhou o jogo!")
            disabilitaBotoes()



        } else if a2.title == o && b2.title == o && c2.title == o {

            print("Jogador \(o) ganhou o jogo!")
            disabilitaBotoes()

        } else if a2.title == x && b2.title == x && c2.title == x {

            print("Jogador \(x) ganhou o jogo!")
            disabilitaBotoes()




        } else if a3.title == o && b3.title == o && c3.title == o {

            print("Jogador \(o) ganhou o jogo!")
            disabilitaBotoes()


        } else if a3.title == x && b3.title == x && c3.title == x {

            print("Jogador \(x) ganhou o jogo!")
            disabilitaBotoes()




            // Diagonal
        } else if a1.title == o && b2.title == o && c3.title == o {

            print("Jogador \(o) ganhou o jogo!")
            disabilitaBotoes()

        } else if a1.title == x && b2.title == x && c3.title == x {

            print("Jogador \(x) ganhou o jogo!")
            disabilitaBotoes()




        } else if a3.title == o && b2.title == o && c1.title == o {

            print("Jogador \(o) ganhou o jogo!")
            disabilitaBotoes()


        } else if a3.title == x && b2.title == x && c1.title == x {

            print("Jogador \(x) ganhou o jogo!")
            disabilitaBotoes()

        }

    }

}

extension UIButton {

    var title: String? {
        return titleLabel?.text
    }

}

/* JOGO DA VELHA

 1• FAZER O X/O FUNCIONAR AO CLICAR √

 2• FAZER O JOGO TERMINAR ASSIM QUE TIVER 3 X/O NA MESMA LINHA IMPOSSIBILITANDO DE ADICIONAR DE NOVO

 */



