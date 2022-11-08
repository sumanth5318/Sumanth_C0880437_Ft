//
//  GameresultVC.swift
//  Sumanth_C0880437_FT
//
//  Created by Sai Sumanth Nissankara rao on 2022-11-07.
//

import UIKit
class GameresultVC: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    var resultset:[String] = []
    weak var delegate: ViewController?
    override func viewDidLoad() {
        super.viewDidLoad()
        print(resultset)
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return resultset.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "result_cell", for: indexPath)
        //let res = resultset[indexPath.row]
        //cell.textLabel?.text = res.text
        cell.textLabel?.text = "\(resultset[indexPath.row])"
        return cell
    }

}
