//
//  ViewController.swift
//  SimpleCardViews
//
//  Created by Tong Lin on 12/18/16.
//  Copyright © 2016 Tong Lin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var viewOne = CardView()
    var viewTwo = CardView()
    var viewThree = CardView()
    var viewFour = CardView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.green
        
        self.view.addSubview(viewOne)
        self.view.addSubview(viewTwo)
        self.view.addSubview(viewThree)
        self.view.addSubview(viewFour)
        updateConstraints()
        
        //viewOne.topLabel?.text = "sadas"
        //viewOne.bottomLabel.text = "asda"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateConstraints(){
        viewOne.translatesAutoresizingMaskIntoConstraints = false
        viewTwo.translatesAutoresizingMaskIntoConstraints = false
        viewThree.translatesAutoresizingMaskIntoConstraints = false
        viewFour.translatesAutoresizingMaskIntoConstraints = false
        
        viewOne.heightAnchor.constraint(equalToConstant: 200).isActive = true
        viewOne.widthAnchor.constraint(equalToConstant: 150).isActive = true
        viewOne.topAnchor.constraint(equalTo: view.topAnchor, constant: 25).isActive = true
        viewOne.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25).isActive = true
        viewOne.backgroundColor = UIColor.white
        
        viewTwo.heightAnchor.constraint(equalToConstant: 200).isActive = true
        viewTwo.widthAnchor.constraint(equalToConstant: 150).isActive = true
        viewTwo.centerYAnchor.constraint(equalTo: viewOne.centerYAnchor).isActive = true
        viewTwo.leadingAnchor.constraint(equalTo: viewOne.trailingAnchor, constant: 25).isActive = true
        viewTwo.backgroundColor = UIColor.white
        
        viewThree.heightAnchor.constraint(equalToConstant: 200).isActive = true
        viewThree.widthAnchor.constraint(equalToConstant: 150).isActive = true
        viewThree.topAnchor.constraint(equalTo: viewOne.bottomAnchor, constant: 30).isActive = true
        viewThree.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25).isActive = true
        viewThree.backgroundColor = UIColor.white
        
        viewFour.heightAnchor.constraint(equalToConstant: 200).isActive = true
        viewFour.widthAnchor.constraint(equalToConstant: 150).isActive = true
        viewFour.centerYAnchor.constraint(equalTo: viewThree.centerYAnchor).isActive = true
        viewFour.leadingAnchor.constraint(equalTo: viewOne.trailingAnchor, constant: 25).isActive = true
        viewFour.backgroundColor = UIColor.white
    }
}

