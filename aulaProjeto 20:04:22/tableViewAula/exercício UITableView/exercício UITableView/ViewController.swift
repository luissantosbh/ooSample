//
//  ViewController.swift
//  exercício UITableView
//
//  Created by Fernanda Perovano Ribeiro Montes on 20/04/22.
//  Copyright © 2022 teste. All rights reserved.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let carros = ["Audi", "BMW", "Honda", "Volks","Fiat"]
    let imagemCarros = [UIImage(named: "audi")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }
}

extension ViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("clicou")
    }
    
    struct ContentView: View {
        var body: some View {
            Image("audi")
        }
    }
}

    extension ViewController: UITableViewDataSource {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            if section == 0 { return 1 }
            if section == 1 { return 1 }
            if section == 2 { return 1 }
            if section == 3 { return 1 }
            if section == 4 { return 1 }
            
            return 0
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let row = indexPath.row
            let section = indexPath.section
            let cell = UITableViewCell()
            cell.textLabel?.text = carros[section]
            
            return cell
        }
        
        func numberOfSections(in tableView: UITableView) -> Int {
            return carros.count
        }
}

