//
//  ContentView.swift
//  Galatasaray
//
//  Created by omer sanli on 24.12.2021.
//

import SwiftUI

struct ContentView: View {
    @State var verilerimiz: [Model] = ayristirma(dosyaAdi: "gsTakim", dosyaUzantisi: "json")
    
    
    var body: some View {
        NavigationView{
            
            List{
                ForEach(verilerimiz, id: \.self) { veri in
                    NavigationLink {
                        IkinciView(ikinciVeri: veri)
                    } label: {
                        HStack{
                            AsyncImage(url: URL(string: veri.image))
                                .scaledToFit()
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                            
                            Text(veri.ad)
                        }
                    }

               
                    
                    
                    
                }
            }
            .listStyle(.plain)
            .navigationTitle(Text("Galatasaray"))
        }
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
