//
//  ViewController.swift
//  QuizApp
//
//  Created by SHUBHAM AGARWAL on 04/03/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var playButton: UIButton! {
        didSet {
            playButton.layer.cornerRadius = playButton.frame.height/2
        }
    }
    @IBOutlet weak var topicButton: UIButton! {
        didSet {
            topicButton.layer.cornerRadius = topicButton.frame.height/2
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onClickPlay(_ sender: Any) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "QuizViewController") as? QuizViewController else {return}
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func onClickTopic(_ sender: Any) {
    }
}

