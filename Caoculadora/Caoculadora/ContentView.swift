//
//  ContentView.swift
//  Caoculadora
//
//  Created by Letícia Andrade de Oliveira Barros on 08/05/24.
//

import SwiftUI

struct ContentView: View {
    @State var years: Int? = nil
    @State var month: Int? = nil
    var body: some View {
        VStack (alignment: .leading) {
        
            Text("Qual é a idade do seu cao?")
            Text("Anos")
            TextField("Digite quantos anos seu cao tem:",
                      value: $years, format: .number)
            Text("Meses")
            TextField("Digite quantos meses além disso ele tem:",
                      value: $month, format: .number)
            
        }
        .textFieldStyle(.roundedBorder).keyboardType(.numberPad).bold().fontDesign(.rounded). padding()
        .padding()
    }
}

#Preview {
    ContentView()
}
