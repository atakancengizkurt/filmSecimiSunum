//
//  FilmModel.swift
//  FilmSecimiTest
//
//  Created by Atakan Cengiz KURT on 17.12.2020.
//

import Foundation

struct FilmModel: Codable {
    var name: String?
    var year: Int?
    var isFavourite: Bool? = false
}


class FilmModell{
    var name: String?
    var year: Int?
    var isFavourite : Bool?

    init(name: String, year: Int, isFavourite: Bool? = false) {
        self.name = name
        self.year = year
        self.isFavourite = isFavourite
    }
}

var classs = FilmModell(name: "Inception", year: 1989, isFavourite: true)

//İçlerinde property'ler, metodlar, protokoller tanımlayabiliriz. Farklı olarak;
//Miras alma olayı Class'a has özelliktir.
//Struct için init zorunlu değildir.
//Struct'ların bir başka nesneden türemesi mümkün değilken Class'lar başka nesnelerden türeyebilir.
//Sadece Class'ların başka nesnelere cast edilmesi mümkündür.
//Struct'lar referance counting mantığıyla davranmazlar, her atama işleminde yeni bir kopyası oluşturulur. Fakat bir class'ın instance'ını birden fazla nesne referans alabilir.
//Class'lar referans tipli (referans type), Struct'lar değer tipli (value type) yapılardır.

//Reference Type --> Örnek alınan nesneyi değiştirince değere referans alınan diğer değerlerde değişir.
//Value Type --> Struct,Enum,String,Int, Dict, Double. Değerler kopyalanır.


//Struct yapılar otomatik olarak oluşturulan initialize methodlara sahiplerdir. Örnek oluşturması
var structt = FilmModel(name: "Inception", year: 2010, isFavourite: nil)

//Struct'lar değer tipli yapılardır. Bir struct instance'ını farklı bir struct'a atadığımız zaman bir kopyası üzerinden atama yapılır ve her iki instance'da farklı bellek bölgelerinde saklanır.
