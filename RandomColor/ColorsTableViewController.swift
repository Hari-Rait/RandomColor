//
//  ColorsTableViewController.swift
//  RandomColor
//
//  Created by Hari Rait on 30.11.23.
//

import UIKit

class ColorsTableViewController: UIViewController {
    
    // Ein Array für die Farben die wir haben
    var colors: [UIColor] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        addRandomColors()
    }

    // Hier fügen wir eine zufällige Farbe den Array zu
    func addRandomColors() {
        for _ in 0..<50 {
            colors.append(.random())
        }
    }
    
    
    // gibt die Farbe weiter an die nächste View 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationViewController = segue.destination as! ColorDetialViewController
        destinationViewController.color = sender as? UIColor
    }
}

extension ColorsTableViewController: UITableViewDelegate, UITableViewDataSource {
    
    // Her geben wir an wie viele Rows die Tablle haben soll
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    // Hier geben wir an das das wir immer eine Zelle haben sollen für die Tabelle
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell") else {
            return UITableViewCell()
        }
        
        cell.backgroundColor = colors[indexPath.row]
        return cell
    }
    
    // Hier geben wir den Connector beim Auswählen einer Row wir die View weiter zu der Anderen view geschickt
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]
        performSegue(withIdentifier: "RoColorDetailViewController", sender: color)
    }
}
