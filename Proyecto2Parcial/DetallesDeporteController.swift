//
//  DetallesDeporteController.swift
//  Proyecto2Parcial
//
//  Created by Alumno on 10/4/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class DetallesDeporteController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var lblAutoridad: UILabel!
    @IBOutlet weak var lblEquipo: UILabel!
    @IBOutlet weak var lblGenero: UILabel!
    @IBOutlet weak var lblCategoria: UILabel!
    @IBOutlet weak var lblDuracion: UILabel!
    @IBOutlet weak var lblContacto: UILabel!
    @IBOutlet weak var lblAccesorios: UILabel!
    @IBOutlet weak var imgFoto: UIImageView!
    
    
    var deporte : Deporte?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if deporte != nil {
            self.title = deporte!.nombre
            lblAutoridad.text = deporte!.autoridad
            lblEquipo.text = deporte!.equipo
            lblGenero.text = deporte!.genero
            lblCategoria.text = deporte!.categoria
            lblDuracion.text = deporte!.duracion
            lblContacto.text = deporte!.contacto
            lblAccesorios.text = deporte!.accesorios
            imgFoto.image = UIImage(named: "\(deporte!.foto)2")
        } else {
            self.title = "Detalles deporte"
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return deporte!.jugadores.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaJugador") as? CeldaJugadorController
        celda?.lblNombre.text = deporte!.jugadores[indexPath.row].nombre
        celda?.lblPais.text = deporte!.jugadores[indexPath.row].pais
        return celda!
    }
    
}
