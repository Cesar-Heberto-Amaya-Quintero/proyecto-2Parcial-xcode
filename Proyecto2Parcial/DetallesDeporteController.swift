//
//  DetallesDeporteController.swift
//  Proyecto2Parcial
//
//  Created by Alumno on 10/4/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class DetallesDeporteController: UIViewController {
    

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
        }
    }

}
