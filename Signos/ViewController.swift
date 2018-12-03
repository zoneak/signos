//
//  ViewController.swift
//  Signos
//
//  Created by Adriano Kaito on 03/12/18.
//  Copyright © 2018 AK. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var signos: [String] = []
    var significadoSignos: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        signos.append("Áries")
        signos.append("Touro")
        signos.append("Gêmeos")
        signos.append("Cancer")
        signos.append("Leão")
        signos.append("Virgem")
        signos.append("Libra")
        signos.append("Escorpião")
        signos.append("Sagitário")
        signos.append("Capricórnio")
        signos.append("Aquário")
        signos.append("Peixes")
        
        significadoSignos.append("Aries bla bla bla")
        significadoSignos.append("Touro bla bla bla")
        significadoSignos.append("Gemeos bla bla bla")
        significadoSignos.append("Cancer bla bla bla")
        significadoSignos.append("Leao bla bla bla")
        significadoSignos.append("Virgem bla bla bla")
        significadoSignos.append("Libra bla bla bla")
        significadoSignos.append("Escorpiao bla bla bla")
        significadoSignos.append("Sagitario bla bla bla")
        significadoSignos.append("Capricornio bla bla bla")
        significadoSignos.append("Aquario bla bla bla")
        significadoSignos.append("Peixes bla bla bla")
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return signos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celulaReuso = "celulaReuso"
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath)
        
        celula.textLabel?.text = signos[indexPath.row]
        return celula
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        let alertaController = UIAlertController(title: "Significado do signo", message: significadoSignos[indexPath.row], preferredStyle: .alert)
        let acaoConfirmar = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alertaController.addAction(acaoConfirmar)
        
        present(alertaController, animated: true, completion: nil)
    }
}

