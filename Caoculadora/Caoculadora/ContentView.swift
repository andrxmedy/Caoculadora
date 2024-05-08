//
//  ContentView.swift
//  Caoculadora
//
//  Created by Letícia Andrade de Oliveira Barros on 08/05/24.
//

import SwiftUI

struct ContentView: View {
    @State var years: Int? = nil
    @State var months: Int? = nil
    @State var result: Int?
    
    var body: some View {
        VStack (alignment: .leading) {
        
            Text("Qual é a idade do seu cão?")
                .font(.system(size: 24))
            Text("Anos")
            TextField("Digite quantos anos seu cao tem:",
                      value: $years, format: .number)
            Text("Meses")
            TextField("Digite quantos meses além disso ele tem:",
                      value: $months, format: .number)
            Text("Porte")
            // SEGMENTED CONTROL
            if let result {
                Text("Seu cachorro tem, em idade humana...")
                Text("\(result) anos")
            } else {
                Image("clarinha")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(maxHeight: 150)
                                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)// centralizou na tela
                                .shadow(radius: 20)
            }
            Button(action: {
                result = 23
            }, label: {
                ZStack{
                    Color.indigo
                    Text("Cãocular")
                        .foregroundStyle(.white)
                }
            })
            .cornerRadius(10)
            .frame(height: 50)
    
            
            
        }
        .textFieldStyle(.roundedBorder).keyboardType(.numberPad).bold().fontDesign(.rounded).padding()
        .padding()
    }
}

#Preview {
    ContentView()
}
