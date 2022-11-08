//
//  ViewController.swift
//  Sumanth_C0880437_FT
//
//  Created by Sai Sumanth Nissankara rao on 2022-11-07.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var number: UILabel!
    @IBOutlet weak var resimage: UIImageView!
    @IBOutlet weak var even: UIButton!
    @IBOutlet weak var odd: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
        loadRandomNumber()
    }
    let infoAlert = UIAlertController(title: "Result", message: "you entered right answer", preferredStyle: .alert)
    @IBAction func evencheck(_ sender: Any) {
        checkEven()
        showError(infoAlert)
    }
    @IBAction func oddcheck(_ sender: Any) {
        checkOdd()
        showError(infoAlert)
        
    }
    
    private func showError(_ alert: UIAlertController) {
        let action = UIAlertAction(title: "Playagain", style: .default,handler: { _ in self.loadRandomNumber()})
        alert.addAction(action)
        let Action = UIAlertAction(title: "Show progress", style: .default,handler: { _ in self.resultscreen()})
        alert.addAction(Action)
        present(alert, animated: true)
    }
    @objc func checkEven() {
        let number = Int(self.number.text!) ?? 0
        if isEven(number: number) {
            print("Even")
            infoAlert.message = "Hurry its right answer"
            loadRandomNumber()
        }else{
            infoAlert.message = "oops wrong answer \n correct answer is Odd"
        }
    }
    
    @objc func checkOdd() {
        let number = Int(self.number.text!) ?? 0
        if !isEven(number: number) {
            print("Odd")
            infoAlert.message = ("Hurry its right answer")
            loadRandomNumber()
        }else{
            infoAlert.message = "oops wrong answer \n correct answer is even"
        }
    }
    
    func resultscreen(){
        let mainSB : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let GameresultTVC = mainSB.instantiateViewController(withIdentifier: "gamescene")
        navigationController?.pushViewController(GameresultTVC, animated: true)
    }
    
    func isEven(number: Int) -> Bool {
        if number % 2 == 0{
            return true
        }else {
            return false
        }
       
    }
    
    func loadRandomNumber() {
        let number = Int(arc4random_uniform(100))
        self.number.text = "\(number)"
        
    }
    
}

