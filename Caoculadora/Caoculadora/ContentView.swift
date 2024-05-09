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
    let portes = ["Pequeno", "Médio", "Grande"]
    @State var porte: String = "Pequeno"
    
    var body: some View {
        VStack (alignment: .leading) {
            Spacer()
            Spacer()
            
        
            Text("Qual é a idade do seu cão?")
                .font(.system(size: 24))
            Spacer()
            Text("Anos")
            TextField("Digite quantos anos seu cao tem:",
                      value: $years, format: .number)
            Spacer()
            Text("Meses")
            
            TextField("Digite quantos meses além disso ele tem:",
                      value: $months, format: .number)
            Spacer()
            Text("Porte")
            // SEGMENTED CONTROL
            
            Picker("Porte", selection: $porte){
                ForEach(portes, id: \.self) { porte in
                    Text(porte)
                        .tag(porte)
                }
            }
            
            .pickerStyle(.segmented)
            Divider()
            if let result {
                Text("Seu cachorro tem, em idade humana...")
                Text("\(result) anos")
            } else {
                Spacer()
                
                Image("clarinha")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(maxHeight: 150)
                                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)// centralizou na tela
                                .shadow(radius: 20)
            }
            Spacer()
            Button(action: processYears, label: {
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
    func processYears(){
        
        guard  let years,
        let months else { //desempacota diretamente
            return
        }
        
        guard years > 0 || months > 0 else {
            print("algum campo tem que ter valor mais que zero")
            return
        }
        
            result = years * 7 + months * 7 / 12
        
    }
}

#Preview {
    ContentView()
}
