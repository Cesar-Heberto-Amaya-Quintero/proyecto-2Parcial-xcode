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
    var jugadoresFut: [Jugador] = []
    var jugadoresBeis: [Jugador] = []
    var jugadoresBasket: [Jugador] = []
    var jugadoresVoley: [Jugador] = []
    var jugadoresTenis: [Jugador] = []
    var jugadoresPingPong: [Jugador] = []
    
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
        celda?.imgFoto.layer.cornerRadius = 5
        celda?.imgFoto.image = UIImage(named: deportes[indexPath.row].foto)
        
        return celda!
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! DetallesDeporteController
        destino.deporte = deportes[tvDeporte.indexPathForSelectedRow!.row]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        jugadoresFut.append(Jugador(nombre: "Lionel Messi", pais: "Argentina"))
        jugadoresFut.append(Jugador(nombre: "Cristiano Ronaldo", pais: "Portugal"))
        jugadoresFut.append(Jugador(nombre: "Eden Hazard", pais: "Bélgica"))
        jugadoresFut.append(Jugador(nombre: "Kylian Mbappe", pais: "Francia"))
        jugadoresFut.append(Jugador(nombre: "Karim Benzema", pais: "Francia"))
        
        jugadoresBeis.append(Jugador(nombre: "Mike Trout", pais: "Estados Unidos"))
        jugadoresBeis.append(Jugador(nombre: "Babe Ruth", pais: "Estados Unidos"))
        jugadoresBeis.append(Jugador(nombre: "Ted Wiliams", pais: "Estados Unidos"))
        jugadoresBeis.append(Jugador(nombre: "José Altuve", pais: "Venezuela"))
        jugadoresBeis.append(Jugador(nombre: "Bryce Harper", pais: "Estados Unidos"))
        
        jugadoresBasket.append(Jugador(nombre: "LeBron James", pais: "Estados Unidos"))
        jugadoresBasket.append(Jugador(nombre: "Michael Jordan", pais: "Estados Unidos"))
        jugadoresBasket.append(Jugador(nombre: "Kobe Bryant", pais: "Estados Unidos"))
        jugadoresBasket.append(Jugador(nombre: "Stephen Curry", pais: "Estados Unidos"))
        jugadoresBasket.append(Jugador(nombre: "Saquille O'Neal", pais: "Estados Unidos"))
        
        jugadoresBasket.append(Jugador(nombre: "Ivan Zaitsev", pais: "Italia"))
        jugadoresBasket.append(Jugador(nombre: "Karch Kiraly", pais: "Estados Unidos"))
        jugadoresBasket.append(Jugador(nombre: "Saeid Marouf", pais: "Irán"))
        jugadoresBasket.append(Jugador(nombre: "Regla Torres", pais: "Cuba"))
        jugadoresBasket.append(Jugador(nombre: "Mireya Luis", pais: "Cuba"))
        
        jugadoresTenis.append(Jugador(nombre: "Rafael Nadal", pais: "España"))
        jugadoresTenis.append(Jugador(nombre: "Roger Federer", pais: "Suiza"))
        jugadoresTenis.append(Jugador(nombre: "Novak Djokovic", pais: "Serbia"))
        jugadoresTenis.append(Jugador(nombre: "Serena Williams", pais: "Estadps Unidos"))
        jugadoresTenis.append(Jugador(nombre: "Carlos Alcaraz", pais: "España"))

        //LLENAR DATOS
        deportes.append(Deporte(nombre: "Fútbol", categoria: "En equipo", duracion: "90 minutos", equipo: "11 Jugadores", contacto: "Si", accesorios: "Pelota, guantes, taquetes, espinilleras", genero: "M y F", autoridad: "FIFA", foto: "futbol", jugadores: jugadoresFut))
        
        deportes.append(Deporte(nombre: "Béisbol", categoria: "En equipo", duracion: "9 entradas", equipo: "9 Jugadores", contacto: "Si", accesorios: "Pelota, bate, guante", genero: "M y F", autoridad: "WBSC", foto: "beisbol", jugadores:  jugadoresBeis))
        
        deportes.append(Deporte(nombre: "Basquetbol", categoria: "En equipo", duracion: "4 cuartos (10 min)", equipo: "5 Jugadores", contacto: "Si", accesorios: "Calcetines, Balones, Canastas", genero: "M y F", autoridad: "FIBA", foto: "basketball", jugadores:  jugadoresBasket))
        
        deportes.append(Deporte(nombre: "Voleibol", categoria: "En equipo", duracion: "4 sets (25 pts)", equipo: "6 Jugadores", contacto: "No", accesorios: "Rodilleras, Shorts, protectores de antebrazos, coderas, tobilleras, muñequeras, balón", genero: "M y F", autoridad: "FIVB", foto: "voleibol", jugadores:  jugadoresVoley))
        
        deportes.append(Deporte(nombre: "Tenis", categoria: "Ind. o equipo", duracion: "3 o 5 sets", equipo: "1 o 2 Jugadores", contacto: "No", accesorios: "Raqueta, pelota, red, muñequeras", genero: "M y F", autoridad: "ITF", foto: "tenis", jugadores:  jugadoresTenis))

    }
}
