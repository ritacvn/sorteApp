//
//  ViewController.swift
//  sorteApp
//
//  Created by Rita de Cássia Vasconcelos do Nascimento on 16/07/2018.
//  Copyright © 2018 Rita de Cássia Vasconcelos do Nascimento. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // Variáveis
    
    var luckNumber = 0
    
    let images: [UIImage] = [#imageLiteral(resourceName: "redI"),#imageLiteral(resourceName: "orangeI"),#imageLiteral(resourceName: "brownI"),#imageLiteral(resourceName: "yellowI"),#imageLiteral(resourceName: "blackI"),#imageLiteral(resourceName: "bluedI"),#imageLiteral(resourceName: "bluellI"),#imageLiteral(resourceName: "bluellI"),#imageLiteral(resourceName: "blueseaI"),#imageLiteral(resourceName: "greenlI"),#imageLiteral(resourceName: "greenlemonI"),#imageLiteral(resourceName: "greensI"),#imageLiteral(resourceName: "greylI"),#imageLiteral(resourceName: "greyI"),#imageLiteral(resourceName: "pinkI"),#imageLiteral(resourceName: "purpledI"),#imageLiteral(resourceName: "purplelI")]
    
    var isopen = false
    
    // My Labels
    
    @IBOutlet weak var randomFrase: UILabel!
    @IBOutlet weak var updateNumber: UILabel!
    @IBOutlet weak var btnCard: UIButton!
    @IBOutlet weak var imageRandom: UIImageView!
    @IBOutlet weak var corDaSorteLabel: UILabel!
    @IBOutlet weak var viewLabel: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Funções
    
    func upadateLuckyNumber(){ // Atualizar número da sorte
        let numero = ["01 22 05 60 29 23",
                      "02 27 57 45 34 10",
                      "01 02 05 06 07 08",
                      "01 03 04 06 08 09",
                      "02 03 04 05 07 09",
                      "02 03 05 08 10 12",
                      "04 09 18 23 41 53",
                      "07 12 15 38 43 45",
                      "11 29 31 49 57 60",
                      "01 17 20 21 43 59",
                      "14 19 25 31 38 42",
                      "01 17 18 20 38 52",
                      "09 59 34 02 01 07",
                      "10 44 37 09 03 07",
                      ]
        luckNumber = Int(arc4random_uniform(UInt32(numero.count)))
        updateNumber.text = numero[luckNumber]
    }
    
    func updateImage(){ // Atualizar imagem da sorte
        let picture: Int = Int(arc4random_uniform(UInt32(images.count)))
        //self.imageRandom.image = UIImage(named: images[picture])
        imageRandom.image = images[picture]
        
        print(self.images[picture])
    }
    
    @IBAction func btnFlip(_ sender: Any) { // Animação das cartas (FlipCard)
        
        if isopen{
            isopen = false
            let image = UIImage(named: "cardtrue")
            btnCard.setImage(image, for: .normal)
            UIView.transition(with: viewLabel, duration: 0.3, options: .transitionFlipFromRight, animations: nil, completion: nil)
            randomFrase.text = "  "
            updateNumber.text = "  "
            
        
        }else{
            isopen = true
            let image = UIImage(named: "cardtrue")
            btnCard.setImage(image, for: .normal)
            UIView.transition(with: viewLabel, duration: 0.3, options: .transitionFlipFromRight, animations: nil, completion: nil)
        }
        Sound.play(file: "flip.mp3")
    }
    @IBAction func showFrases(_ sender: Any) { // Randomização das frases

        let arrayDeFrases = ["You are far more influential than you think. 🤛🏽 ",
                             "A friend asks only for your time not your money. 💸",
                             "If you refuse to accept anything but the best, you very often get it. 🧐",
                             "A smile is your passport into the other's hearts. 😄",
                             "Hard work pays off in the future, laziness pays off now. 🤙🏽",
                             "Change can hurt, but it leads a path to something better. 👍🏽",
                             "People are naturally attracted to you. 😏",
                             "A foolish man listens to his heart. A wise man listens to this app. 😉",
                             "Do not mistake temptation for opportunity.",
                             "Never forget a friend. Especially if he owes you. 🤓",
                             "There will come a time when you'll wish you'd given love a chance. 💔",
                             "Hug your loved ones today. 🌈",
                             "No one can make you feel inferior without your consent.",
                             "Tomorrow will be a better day. And if not, there's always chocolate. 🍫",
                             "There is no mistake so great as that of being always right. 🤟🏽",
                             "You are not illiterate. 🙂",
                             "Understand the experience's value, don't accept facilities to make progress! 👍🏽 ",
                             "Every person is like a grain of sand, but a crowd is like gold rock 💫",
                             "If there isn't clouds, it's not going to rain 🌧",
                             "You'll be watered with good luck 🍀",
                             "Avoid the waste and the water's polution it's a duty from everyone 💦",
                             "Do not hide your ambition afraid of take responsabilities 🤛🏽",
                             "If you have something good in your life, don't let it go!",
                             "You cannot love life until you live the life you love",
                             "The man or woman you desire feels the same about you",
                             "A dream you have will come true.",
                             "You will become great if you believe in yourself.",
                             "A very attractive person has a message for you.",
                             "You must try, or hate yourself for not trying.",
                             "You can make your own happiness.",
                             "A short stranger will soon enter your life with blessings to share.",
                             "Now is the time to try something new.",
                             "You are very talented in many ways.",
                             "Its amazing how much good you can do if you dont care who gets the credit.",
                             "Jealousy doesn't open doors, it closes them!",
                             "It's better to be alone sometimes.",
                             "The man on the top of the mountain did not fall there.",
                             "A journey of a thousand miles begins with a single step.",
                             "Sometimes you just need to lay on the floor.",
                             "If you have something worth fighting for, then fight for it.",
                             "Stop wishing. Start doing.",
                             "For success today, look first to yourself.",
                             "Integrity is the essence of everything successful.",
                             "If you're happy, you're successful.",
                             "Your golden opportunity is coming shortly.",
                             "You will be successful in love.",
                             "You are the controller of your destiny.",
                             "Everything happens for a reason. Don't ever forget about that.",
                             "Welcome the change coming into your life.",
                             "There will be a happy romance for you shortly.",
                             "To be old and wise, you must first be young and stupid.",
            
                             ]

        let randomPhrase = Int(arc4random_uniform(UInt32(arrayDeFrases.count)))
        randomFrase.text =  arrayDeFrases[randomPhrase]
        corDaSorteLabel.text = "Lucky color 🔮: "
        upadateLuckyNumber()
        updateImage()
    }
    
    //Alert
    
//    @IBAction func showAlert(_ sender: Any) {
//        let message: String = "You have to touch in the card"
//
//        let alert = UIAlertController(title:title,
//                                      message: message, preferredStyle: .alert)
//        let action = UIAlertAction(title: "Ok",
//                                   style: .default, handler: nil)
//
//        alert.addAction(action)
//
//        present(alert, animated: true, completion: nil)
//    }
//    
}

