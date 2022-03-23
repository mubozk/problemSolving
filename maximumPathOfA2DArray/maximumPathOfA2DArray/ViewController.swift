//
//  ViewController.swift
//  maximumPathOfA2DArray
//
//  Created by Muhammet BOZKURT on 23.03.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(printAllAdjacentNeighbours(on: input, row:0, column:0))
    }


}

