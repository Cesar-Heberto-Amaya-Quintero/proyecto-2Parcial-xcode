//
//  Deporte.swift
//  Proyecto2Parcial
//
//  Created by Alumno on 10/4/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

class Deporte {
    var nombre : String
    var categoria : String
    var duracion : String
    var equipo : String
    var contacto: String
    var accesorios: String
    var genero: String
    var autoridad: String
    var foto: String
    var jugadores: [Jugador]
    
    
    init(nombre: String, categoria : String, duracion : String, equipo : String, contacto: String, accesorios: String, genero: String, autoridad: String, foto: String, jugadores: [Jugador]) {
        self.nombre = nombre
        self.categoria = categoria
        self.duracion = duracion
        self.equipo = equipo
        self.contacto = contacto
        self.accesorios = accesorios
        self.genero = genero
        self.autoridad = autoridad
        self.foto = foto
        self.jugadores = jugadores
    }
}
