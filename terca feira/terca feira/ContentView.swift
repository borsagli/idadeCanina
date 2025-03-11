//
//  ContentView.swift
//  terca feira
//
//  Created by COTEMIG on 11/03/25.
//

import SwiftUI

struct ContentView: View {
    @State private var idadeHumana: String = ""
    @State private var idadedocao: String = ""

    func CalcularIdadeHumana() -> Void {
        if let idade = Int(idadeHumana), idade > 0{
            let resultado = idade * 7
            idadedocao = "\(resultado) anos"
    
        }else {
            idadedocao = " Digite uma idade válida"
        }
    }
    
    var body: some View {

        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Calculador de idade canina")
            TextField(
                "Digite a idade humana",
                text: $idadeHumana
            )
            
            Text(idadedocao)
            
            Button( action: CalcularIdadeHumana){
               Text("Calcular")
                
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

