
import UIKit

class ViewController: UIViewController {
    //press control and drag from the image to create an IBOutlet and IBAction for the imageView
    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    //setting a diceImage array to set values of dices easily instead of creating 6 dice variables
    var diceImages=["DiceOne","DiceTwo","DiceThree","DiceFour","DiceFive","DiceSix"]
    //creating an array of type UIImage
    var dices=[UIImage]()
    override func viewDidLoad() {
        super.viewDidLoad()
        for i in diceImages
        {
            dices.append(UIImage(named: i)!)
        }
    }
    @IBAction func rollButton(_ sender: UIButton) {
        print("Button taped")
        let dice1=UIImage(imageLiteralResourceName: "DiceOne")
        let dice2=UIImage(imageLiteralResourceName: "DiceTwo")
        let dice3=UIImage(imageLiteralResourceName: "DiceThree")
        let dice4=UIImage(imageLiteralResourceName: "DiceFour")
        let dice5=UIImage(imageLiteralResourceName: "DiceFive")
        let dice6=UIImage(imageLiteralResourceName: "DiceSix")
        //creating an array of all the dices from 1 to 6.
        let arrayDice=[dice1,dice2,dice3,dice4,dice5,dice6]
        /*Int.random(in: x...y) is used to get random integers from x...y inclusive
        of x and y*/
        animateDice1()
        animateDice2()
        diceImageView1.image=arrayDice[Int.random(in: 0...5)]
        diceImageView2.image=arrayDice[Int.random(in: 0...5)]
    }
    func animateDice1()
    {
        //animating the diceImageView1 using the list of all dice images
        diceImageView1.animationImages=dices
        diceImageView1.animationDuration=1
        diceImageView1.animationRepeatCount=1
        diceImageView1.startAnimating()
    }
    func animateDice2()
    {
        diceImageView2.animationImages=dices
        diceImageView2.animationDuration=1
        diceImageView2.animationRepeatCount=1
        diceImageView2.startAnimating()
    }
}

