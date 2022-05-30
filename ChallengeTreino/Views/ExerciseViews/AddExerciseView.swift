//
//  AddExercicioView.swift
//  ChallengeTreino
//
//  Created by Rodrigo de Anhaia on 21/05/22.
//

import SwiftUI

struct AddExerciseView: View {
    @Environment(\.dismiss) var dismiss
    @ObservedObject var viewModel: ViewModel
    let id = UUID().uuidString
    @State var name: Int = 0
    @State var image: String = ""
    @State var comments: String = ""
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            VStack(alignment: .trailing) {
                Button("Dismiss") {
                    dismiss()
                }
                .padding()
                .font(.caption)
                .padding(.trailing, 280)
            }
            
            Spacer(minLength: 20)
            
            VStack(spacing: 30) {
                Text("Exercício")
                    .font(.title)
                    .fontWeight(.heavy)
                
                TextField("Adicione um treino: ", value: $name, format: .number)
                    .frame(width: 300)
                    .font(.title3)
                
                TextField("Adicione uma imagem: ", text: $image)
                    .frame(width: 300)
                    .font(.title3)
                    

                TextField("Adicione uma observação: ", text: $comments)
                    .frame(width: 300)
                    .font(.title3)
            }
            .padding(.bottom, 300)
            .autocapitalization(.none)
            .textFieldStyle(.roundedBorder)
            
            HStack(alignment: .top, spacing: 8.0) {
                Button("Salvar") {
                    viewModel.newExercise(newName: name, newImage: image, newComments: comments)
                    dismiss()
                }
                .buttonStyle(PurpleGradienteButton())
            }
        }
        .accentColor(Color(.label))
    }
}

struct AddExerciseView_Previews: PreviewProvider {
    static let dataService = MockedNetworkProvider()
    
    static var previews: some View {
        AddExerciseView(viewModel: ViewModel(dataServive: dataService))
    }
}
