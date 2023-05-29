//
//  ViewController.swift
//  BaiTap2
//
//  Created by Mac on 29/05/2023.
//

import UIKit

enum Results {
    case KEO
    case BUA
    case BAO
}

class ViewController: UIViewController {

    @IBOutlet weak var keoEventView: UIButton!
    
    @IBOutlet weak var youResultView: UILabel!
    
    @IBOutlet weak var computerResultView: UILabel!
    
    @IBOutlet weak var resultsView: UILabel!
    
    @IBOutlet weak var youImageView: UIImageView!
    
    @IBOutlet weak var computerImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        resultsView.text = checkReslut()
    }
    
    var you : Results? = nil
    var computer : Results? = nil
    
    
    @IBAction func keoEvent(_ sender: UIButton) {
        youResultView.text = "Kéo"
        youImageView.image = UIImage(named: "Keo.png")
        you = Results.KEO
        randomComputer()
        resultsView.text = checkReslut()
    }

    @IBAction func buaEvent(_ sender: UIButton) {
        youResultView.text = "Búa"
        youImageView.image = UIImage(named: "Bua.png")
        you = Results.BUA
        randomComputer()
        resultsView.text = checkReslut()
    }
    
    @IBAction func baoEvent(_ sender: UIButton) {
        youResultView.text = "Bao"
        youImageView.image = UIImage(named: "Bao.png")
        you = Results.BAO
        randomComputer()
        resultsView.text = checkReslut()
    }
    
    func randomComputer() {
        let arr = [1,2,3]
        let random = arr.randomElement()
        switch random {
        case 1:
            computer = Results.KEO
            computerResultView.text = "Kéo"
            computerImageView.image = UIImage(named: "Keo.png")
            break
        case 2:
            computer = Results.BUA
            computerResultView.text = "Búa"
            computerImageView.image = UIImage(named: "Bua.png")
            break
        default:
            computer = Results.BAO
            computerResultView.text = "Bao"
            computerImageView.image = UIImage(named: "Bao.png")
            break
            
        }
    }
    
    func checkReslut() -> String {
        guard let youChoose = you else {
            return "Vui lòng chọn"
        }
        
        if youChoose == Results.KEO {
            if computer == Results.KEO {
                return "Hoà"
            } else if computer == Results.BAO {
                return "Thắng"
            } else {
                return "Thua"
            }
        } else if youChoose == Results.BAO {
            if computer == Results.KEO {
                return "Thua"
            } else if computer == Results.BAO {
                return "Hoà"
            } else {
                return "Thắng"
            }
        } else {
            if computer == Results.KEO {
                return "Thắng"
            } else if computer == Results.BAO {
                return "Thua"
            } else {
                return "Hoà"
            }
        }
    }
}

