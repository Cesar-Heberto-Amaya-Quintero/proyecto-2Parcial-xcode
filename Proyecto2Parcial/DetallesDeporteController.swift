//
//  DetallesDeporteController.swift
//  Proyecto2Parcial
//
//  Created by Alumno on 10/4/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class DetallesDeporteController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //OUTLETS PARA TAMAÑO LETRA
    @IBOutlet weak var autoridad: UILabel!
    @IBOutlet weak var equipo: UILabel!
    @IBOutlet weak var genero: UILabel!
    @IBOutlet weak var categoria: UILabel!
    @IBOutlet weak var duracion: UILabel!
    @IBOutlet weak var contacto: UILabel!
    @IBOutlet weak var accesorios: UILabel!
    @IBOutlet weak var jugadores: UILabel!
    
    
    //OUTLETS

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
                lblAutoridad.adjustsFontSizeToFitWidth = true
                lblAutoridad.minimumScaleFactor = 0.75
                lblAutoridad.numberOfLines = 0
            
            lblEquipo.text = deporte!.equipo
                lblEquipo.adjustsFontSizeToFitWidth = true
                lblEquipo.minimumScaleFactor = 0.75
                lblEquipo.numberOfLines = 0
            
            lblGenero.text = deporte!.genero
                lblGenero.adjustsFontSizeToFitWidth = true
                lblGenero.minimumScaleFactor = 0.75
                lblGenero.numberOfLines = 0
            
            lblCategoria.text = deporte!.categoria
                lblCategoria.adjustsFontSizeToFitWidth = true
                lblCategoria.minimumScaleFactor = 0.75
                lblCategoria.numberOfLines = 0
            
            lblDuracion.text = deporte!.duracion
                lblDuracion.adjustsFontSizeToFitWidth = true
                lblDuracion.minimumScaleFactor = 0.75
                lblDuracion.numberOfLines = 0
            
            lblContacto.text = deporte!.contacto
                lblContacto.adjustsFontSizeToFitWidth = true
                lblContacto.minimumScaleFactor = 0.75
                lblContacto.numberOfLines = 0
            
            lblAccesorios.text = deporte!.accesorios
                lblAccesorios.adjustsFontSizeToFitWidth = true
                lblAccesorios.minimumScaleFactor = 0.75
                lblAccesorios.numberOfLines = 0
            
            imgFoto.image = UIImage(named: "\(deporte!.foto)2")
        } else {
            self.title = "Detalles deporte"
        }
        
        autoridad.adjustsFontSizeToFitWidth = true
        autoridad.minimumScaleFactor = 0.75
        autoridad.numberOfLines = 0
        
        equipo.adjustsFontSizeToFitWidth = true
        equipo.minimumScaleFactor = 0.75
        equipo.numberOfLines = 0
        
        genero.adjustsFontSizeToFitWidth = true
        genero.minimumScaleFactor = 0.75
        genero.numberOfLines = 0
        
        categoria.adjustsFontSizeToFitWidth = true
        categoria.minimumScaleFactor = 0.75
        categoria.numberOfLines = 0
        
        duracion.adjustsFontSizeToFitWidth = true
        duracion.minimumScaleFactor = 0.75
        duracion.numberOfLines = 0
        
        contacto.adjustsFontSizeToFitWidth = true
        contacto.minimumScaleFactor = 0.75
        contacto.numberOfLines = 0
        
        accesorios.adjustsFontSizeToFitWidth = true
        accesorios.minimumScaleFactor = 0.75
        accesorios.numberOfLines = 0
        
        jugadores.adjustsFontSizeToFitWidth = true
        jugadores.minimumScaleFactor = 0.75
        jugadores.numberOfLines = 0
        
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
