//
//  ViewController.swift
//  movies
//
//  Created by Suma Valli on 2/19/22.
//

import UIKit
import DropDown

class DropDownViewController: UIViewController {
    
    let dropDown = DropDown();

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func happyButton(_ sender: UIButton) {
        dropDown.dataSource = ["Action, Thriller, Drama, Comedy, Rom-Com"]//4
        dropDown.anchorView = sender //5
        dropDown.bottomOffset = CGPoint(x: 0, y: sender.frame.size.height) //6
        dropDown.show() //7
        dropDown.selectionAction = { [weak self] (index: Int, item: String) in //8
        guard let _ = self else { return }
        sender.setTitle(item, for: .normal) //9
        }
    }
    
}

