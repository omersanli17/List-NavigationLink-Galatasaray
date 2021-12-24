//
//  IkinciView.swift
//  Galatasaray
//
//  Created by omer sanli on 24.12.2021.
//

import SwiftUI

struct IkinciView: View {
    @State var ikinciVeri: Model
    var body: some View {
        VStack{
            AsyncImage(url: URL(string: ikinciVeri.image))
            Text(ikinciVeri.ad)
        }
    }
}

struct IkinciView_Previews: PreviewProvider {
    static var previews: some View {
        IkinciView(ikinciVeri: Model.init(ad: "Ömer Şanlı", image: "https://hlkiurt3.rocketcdn.com/profiles/b84bf87364d2474a9d9f0998646fc300.jpeg"))
    }
}
