//
//  DeportesController.swift
//  Proyecto2Parcial
//
//  Created by Alumno on 10/4/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class DeportesController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tvDeporte: UITableView!
    
    var deportes: [Deporte] = []
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 138
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return deportes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaDeporte") as? CeldaDeporteController
        
        celda?.lblNombre.text = deportes[indexPath.row].nombre
        celda?.lblAutoridad.text = deportes[indexPath.row].autoridad
        celda?.lblCategoria.text = deportes[indexPath.row].categoria
        celda?.imgFoto.image = UIImage(named: deportes[indexPath.row].foto)
        
        return celda!
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! DetallesDeporteController
        destino.deporte = deportes[tvDeporte.indexPathForSelectedRow!.row]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //LLENAR DATOS
        deportes.append(Deporte(nombre: "Fútbol", categoria: "En equipo", duracion: "90 minutos", equipo: "11 Jugadores", contacto: "Si", accesorios: "Pelota, guantes, taquetes, espinilleras", genero: "M y F", autoridad: "FIFA", foto: "futbol"))
        
        deportes.append(Deporte(nombre: "Béisbol", categoria: "En equipo", duracion: "9 entradas", equipo: "9 Jugadores", contacto: "Si", accesorios: "Pelota, bate, guante", genero: "M y F", autoridad: "WBSC", foto: "beisbol"))

    }
}
