
//  ViewController.swift
//  tableViewAula
//
//  Created by Fernanda Perovano Ribeiro Montes on 20/04/22.
//  Copyright © 2022 teste. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let arraySecoes = ["A","B","C","D","E"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension ViewController: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Clicou na linha \(indexPath.row) da sessão \(indexPath.section)")
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 { return 1}
        if section == 1 { return 4}
        if section == 2 { return 2}
        if section == 3 { return 6}
        
        return 10
    }
  // se não falar quantas sessões ou colunas, entende q é 1 (optional)
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = indexPath.row
        let section = indexPath.section
        
      let cell = UITableViewCell()
        cell.textLabel?.text = "linhas\(row)"
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
       // return 4
        return arraySecoes.count
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
//        if section == 0 { return "A"}
//        if section == 1 { return "B"}
//        if section == 2 { return "C"}
//        if section == 3 { return "D"}
        
//        return " "
        return arraySecoes[section]
    }
}


