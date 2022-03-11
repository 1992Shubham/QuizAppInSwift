//
//  ViewController.swift
//  Quiz App
//
//  Created by SHUBHAM AGARWAL on 11/03/22.
//

import UIKit

class ViewController: UIViewController {

    var viewModel = QuestionViewModel()
    var quesitions:DataModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        viewModel.apiToGetQuestionData { [weak self] in
            self?.quesitions = self?.viewModel.questionData
            
            DispatchQueue.main.async {
              //  self?.tableView.reloadData()
            }
            
        }
    }


}

