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
    var jugadoresNatacion: [Jugador] = []
    var jugadoresGolf: [Jugador] = []
    var jugadoresPadel: [Jugador] = []
    var jugadoresBadminton: [Jugador] = []
    var jugadoresAmericano: [Jugador] = []
    var jugadoresBalonmano: [Jugador] = []
    var jugadoresBox: [Jugador] = []
    var jugadoresArco: [Jugador] = []
    var jugadoresHockey: [Jugador] = []

    
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
        
        jugadoresVoley.append(Jugador(nombre: "Ivan Zaitsev", pais: "Italia"))
        jugadoresVoley.append(Jugador(nombre: "Karch Kiraly", pais: "Estados Unidos"))
        jugadoresVoley.append(Jugador(nombre: "Saeid Marouf", pais: "Irán"))
        jugadoresVoley.append(Jugador(nombre: "Regla Torres", pais: "Cuba"))
        jugadoresVoley.append(Jugador(nombre: "Mireya Luis", pais: "Cuba"))
        
        jugadoresTenis.append(Jugador(nombre: "Rafael Nadal", pais: "España"))
        jugadoresTenis.append(Jugador(nombre: "Roger Federer", pais: "Suiza"))
        jugadoresTenis.append(Jugador(nombre: "Novak Djokovic", pais: "Serbia"))
        jugadoresTenis.append(Jugador(nombre: "Serena Williams", pais: "Estadps Unidos"))
        jugadoresTenis.append(Jugador(nombre: "Carlos Alcaraz", pais: "España"))
        
        jugadoresPingPong.append(Jugador(nombre: "Ma Long", pais: "China"))
        jugadoresPingPong.append(Jugador(nombre: "Jan-Ove Waldner", pais: "Suecia"))
        jugadoresPingPong.append(Jugador(nombre: "Hugo Calderano", pais: "Brasil"))
        jugadoresPingPong.append(Jugador(nombre: "Timo Boll", pais: "Alemania"))
        jugadoresPingPong.append(Jugador(nombre: "Kong Linghui", pais: "China"))
        
        jugadoresNatacion.append(Jugador(nombre: "Michael Phelps", pais: "Estados Unidos"))
        jugadoresNatacion.append(Jugador(nombre: "Ian Thorpe", pais: "Australia"))
        jugadoresNatacion.append(Jugador(nombre: "Alexander Popov", pais: "Rusia"))
        jugadoresNatacion.append(Jugador(nombre: "Mark Spitz", pais: "Estados Unidos"))
        jugadoresNatacion.append(Jugador(nombre: "Jenny Thompson", pais: "Estados Unidos"))
        
        jugadoresGolf.append(Jugador(nombre: "Tiger Woods", pais: "Estados Unidos"))
        jugadoresGolf.append(Jugador(nombre: "Dustin Johnson", pais: "Estados Unidos"))
        jugadoresGolf.append(Jugador(nombre: "Sergio García", pais: "España"))
        jugadoresGolf.append(Jugador(nombre: "Lee Westwood", pais: "Reino Unido"))
        jugadoresGolf.append(Jugador(nombre: "Brooks Koepka", pais: "Estados Unidos"))
        
        jugadoresPadel.append(Jugador(nombre: "Paquito Navarro", pais: "España"))
        jugadoresPadel.append(Jugador(nombre: "Alejandro Galán", pais: "España"))
        jugadoresPadel.append(Jugador(nombre: "Alejandra Salazar", pais: "España"))
        jugadoresPadel.append(Jugador(nombre: "Maxi Sánchez", pais: "Argentina"))
        jugadoresPadel.append(Jugador(nombre: "Martín Di Nenno", pais: "Argentina"))
        
        jugadoresBadminton.append(Jugador(nombre: "Lin Dan", pais: "China"))
        jugadoresBadminton.append(Jugador(nombre: "Carolina Marín", pais: "España"))
        jugadoresBadminton.append(Jugador(nombre: "Peter Gade", pais: "Dinamarca"))
        jugadoresBadminton.append(Jugador(nombre: "Victoria Montero", pais: "México"))
        jugadoresBadminton.append(Jugador(nombre: "Lino Muñoz", pais: "México"))
        
        jugadoresAmericano.append(Jugador(nombre: "Tom Brady", pais: "Estados Unidos"))
        jugadoresAmericano.append(Jugador(nombre: "Joe Montana", pais: "Estados Unidos"))
        jugadoresAmericano.append(Jugador(nombre: "Jerry Rice", pais: "Estados Unidos"))
        jugadoresAmericano.append(Jugador(nombre: "Cameron Jordan", pais: "Estados Unidos"))
        jugadoresAmericano.append(Jugador(nombre: "Justin Herbert", pais: "Estados Unidos"))
        
        jugadoresBalonmano.append(Jugador(nombre: "Magnus Wislander", pais: "Suecia"))
        jugadoresBalonmano.append(Jugador(nombre: "Nicola Karabatic", pais: "Serbia"))
        jugadoresBalonmano.append(Jugador(nombre: "Veselin Vujovic", pais: "Yugoslavia"))
        jugadoresBalonmano.append(Jugador(nombre: "Edhard Wunderlich", pais: "Alemania"))
        jugadoresBalonmano.append(Jugador(nombre: "Ivano Balic", pais: "Croacia"))
        
        jugadoresBox.append(Jugador(nombre: "Mike Tyson", pais: "Estados Unidos"))
        jugadoresBox.append(Jugador(nombre: "Floyd Mayweather", pais: "Estados Unidos"))
        jugadoresBox.append(Jugador(nombre: "Saúl Alvarez", pais: "México"))
        jugadoresBox.append(Jugador(nombre: "Julio César Chavez", pais: "México"))
        jugadoresBox.append(Jugador(nombre: "Muhammad Ali", pais: "Estados Unidos"))
        
        jugadoresArco.append(Jugador(nombre: "Luis Álvarez", pais: "México"))
        jugadoresArco.append(Jugador(nombre: "Im Dong-Hyun", pais: "Corea del Sur"))
        jugadoresArco.append(Jugador(nombre: "Marco Galiazzo", pais: "Italia"))
        jugadoresArco.append(Jugador(nombre: "Yun Mi-jin", pais: "Corea del Sur"))
        jugadoresArco.append(Jugador(nombre: "Michele Frangilli", pais: "Italia"))
        
        jugadoresHockey.append(Jugador(nombre: "Wayne Gretzky", pais: "Canadá"))
        jugadoresHockey.append(Jugador(nombre: "Bobby Orr", pais: "Canadá"))
        jugadoresHockey.append(Jugador(nombre: "Mario Lemieux", pais: "Canadá"))
        jugadoresHockey.append(Jugador(nombre: "Andrei Svechnikov", pais: "Rusia"))
        jugadoresHockey.append(Jugador(nombre: "Conor Garland", pais: "Estados Unidos"))
        
        

        //LLENAR DATOS
        deportes.append(Deporte(nombre: "Fútbol", categoria: "En equipo", duracion: "90 minutos", equipo: "11 Jugadores", contacto: "Si", accesorios: "Pelota, guantes, taquetes, espinilleras", genero: "M y F", autoridad: "FIFA", foto: "futbol", jugadores: jugadoresFut))
        
        deportes.append(Deporte(nombre: "Béisbol", categoria: "En equipo", duracion: "9 entradas", equipo: "9 Jugadores", contacto: "Si", accesorios: "Pelota, bate, guante", genero: "M y F", autoridad: "WBSC", foto: "beisbol", jugadores:  jugadoresBeis))
        
        deportes.append(Deporte(nombre: "Basquetbol", categoria: "En equipo", duracion: "4 cuartos (10 min)", equipo: "5 Jugadores", contacto: "Si", accesorios: "Calcetines, Balones, Canastas", genero: "M y F", autoridad: "FIBA", foto: "basketball", jugadores:  jugadoresBasket))
        
        deportes.append(Deporte(nombre: "Voleibol", categoria: "En equipo", duracion: "4 sets (25 pts)", equipo: "6 Jugadores", contacto: "No", accesorios: "Rodilleras, Shorts, protectores de antebrazos, coderas, tobilleras, muñequeras, balón", genero: "M y F", autoridad: "FIVB", foto: "voleibol", jugadores:  jugadoresVoley))
        
        deportes.append(Deporte(nombre: "Tenis", categoria: "Ind. o equipo", duracion: "3, 5, 7 sets", equipo: "1 o 2 Jugadores", contacto: "No", accesorios: "Raqueta, pelota, red, muñequeras", genero: "M y F", autoridad: "ITF", foto: "tenis", jugadores:  jugadoresTenis))
        
        deportes.append(Deporte(nombre: "Tenis de mesa", categoria: "Ind. o equipo", duracion: "3 o 5 sets", equipo: "1 o 2 Jugadores", contacto: "No", accesorios: "Raqueta, pelota, red, muñequeras", genero: "M y F", autoridad: "ITTF", foto: "pingPong", jugadores:  jugadoresPingPong))
        
        deportes.append(Deporte(nombre: "Natación", categoria: "Ind. o equipo", duracion: "50,100,200 mts", equipo: "1 o 4 Jugadores", contacto: "No", accesorios: "Traje de baño, gorro de baño, tapones de oído, pinzas para la nariz, goggles", genero: "M y F", autoridad: "FINA", foto: "natacion", jugadores:  jugadoresNatacion))
        
        deportes.append(Deporte(nombre: "Golf", categoria: "Individual", duracion: "4 - 5 horas", equipo: "2 Jugadores", contacto: "No", accesorios: "Pelotas, Tees, Guantes, Zapatos de golf, palo de golf", genero: "M y F", autoridad: "R&A, USGA", foto: "golf", jugadores:  jugadoresGolf))
        
        deportes.append(Deporte(nombre: "Pádel", categoria: "En equipo", duracion: "3 sets", equipo: "1 Jugador", contacto: "No", accesorios: "Overgrip, Protectores, muñequeras, gorras, raqueta, pelota", genero: "M y F", autoridad: "FIP", foto: "padel", jugadores:  jugadoresPadel))
        
        deportes.append(Deporte(nombre: "Badminton", categoria: "Ind. o equipo", duracion: "3 sets", equipo: "1 o 2 Jugadores", contacto: "No", accesorios: "Raquetas, pluma o volante, red, tenis", genero: "M y F", autoridad: "BWF", foto: "badminton", jugadores:  jugadoresBadminton))
        
        deportes.append(Deporte(nombre: "Fútbol Americano", categoria: "En equipo", duracion: "4 cuartos (15 min)", equipo: "11 Jugadores", contacto: "Si", accesorios: "Casco, pantalones acolchados, hombreras, tenis, protector bucal, coquilla, guantes, pelota", genero: "M y F", autoridad: "IFAF", foto: "americano", jugadores:  jugadoresAmericano))
        
        deportes.append(Deporte(nombre: "Balonmano", categoria: "En equipo", duracion: "2 partes (30 min)", equipo: "7 Jugadores", contacto: "Si", accesorios: "Tenis, Protector bucal, coquilla, pelota", genero: "M y F", autoridad: "IHF", foto: "balonmano", jugadores:  jugadoresBalonmano))
        
        deportes.append(Deporte(nombre: "Boxeo", categoria: "Individual", duracion: "12 asaltos (3 min)", equipo: "1 Jugador", contacto: "Si", accesorios: "Guantes de boxeo, protectores bucales, coquillas, vendas, casco", genero: "M y F", autoridad: "WPBF", foto: "box", jugadores:  jugadoresBox))
        
        deportes.append(Deporte(nombre: "Tiro con arco", categoria: "Ind. o equipo", duracion: "Indefinida", equipo: "1 - 3 Jugadores", contacto: "No", accesorios: "Arco, flechas, carcaj, dactilera, protector de pecho, protector de brazo, reposaflechas", genero: "M y F", autoridad: "World Archery", foto: "tiroArco", jugadores:  jugadoresArco))
        
        deportes.append(Deporte(nombre: "Hockey sobre hielo", categoria: "En equipo", duracion: "3 partes (20 min)", equipo: "6 Jugadores", contacto: "Si", accesorios: "Casco, patines, hombreras, coderas, rodilleras, espinilleras, guantes, protector de cuello, protector bucal, pantalones acolchados", genero: "M y F", autoridad: "IIHF", foto: "hockey", jugadores:  jugadoresHockey))

    }
}
