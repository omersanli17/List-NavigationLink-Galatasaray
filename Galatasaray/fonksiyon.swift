//
//  fonksiyon.swift
//  Galatasaray
//
//  Created by omer sanli on 24.12.2021.
//

import Foundation


func ayristirma(dosyaAdi: String, dosyaUzantisi: String) -> [Model] {
    
    guard let dosyaYolu = Bundle.main.url(forResource: dosyaAdi, withExtension: dosyaUzantisi)else{
        fatalError("Dosya yolu bulunamadı")
    }
    
    guard let data = try? Data(contentsOf: dosyaYolu)else{
        fatalError("Veri alınamadı")
    }
    let decoder = JSONDecoder()
    
    guard let decodeEdilmisData = try? decoder.decode([Model].self, from: data)else{
        fatalError("Veri ayrıştırılamadı")
    }
    return decodeEdilmisData
}
