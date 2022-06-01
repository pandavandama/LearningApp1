//
//  ViewController.swift
//  ENLearning
//
//  Created by Константин Кифа on 01.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    
    
    
    

    

    @IBOutlet weak var tableView: UITableView!
    
    let names = ["Oleg", "Olga"]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Hello")
    }
}

extension ViewController: UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.imageView?.image = UIImage(named: "2")
        cell.textLabel?.text = names[indexPath.row]
        
        
        return cell
    }
    
}
