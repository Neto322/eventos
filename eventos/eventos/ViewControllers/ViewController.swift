//
//  ViewController.swift
//  eventos
//
//  Created by Alumno on 09/11/20.
//  Copyright © 2020 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    var eventos : [Evento] = []
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 284
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return eventos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celdaEvento = tableView.dequeueReusableCell(withIdentifier: "celdaEvento") as! CeldaEventoController
        
        celdaEvento.lblTitulo.text = eventos[indexPath.row].titulo
        
        celdaEvento.lblLugar.text = eventos[indexPath.row].lugar
        
        celdaEvento.lblFecha.text = eventos[indexPath.row].fecha
        
        celdaEvento.lblHora.text = eventos[indexPath.row].hora
        
        celdaEvento.imgEvento.image = UIImage(named: eventos[indexPath.row].imagen
        )
        
        return celdaEvento
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Eventos"
        
        eventos.append(Evento(titulo: "Baile de la brissa", fecha: "20 de noviembre", hora: "9 pm", lugar: "Explanada del TOG", imagen: "laberinto"))
        
        eventos.append(Evento(titulo: "Baile de laberinto", fecha: "2 de diciembre", hora: "9 pm", lugar: "Cocorit", imagen: "brissa"))
        
        
    }


}

